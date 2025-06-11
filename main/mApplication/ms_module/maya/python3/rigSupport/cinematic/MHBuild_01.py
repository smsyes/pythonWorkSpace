import os
import json
import contextlib
import maya.cmds as cmds
import maya.mel as mel
import maya.api.OpenMaya as om2
from dna import (BinaryStreamReader, BinaryStreamWriter, FileStream, DataLayer_All, DataLayer_Behavior, Status)
from dnacalib import (DNACalibDNAReader, CommandSequence, RotateCommand, SetNeutralJointTranslationsCommand, SetNeutralJointRotationsCommand, SetVertexPositionsCommand, CalculateMeshLowerLODsCommand)
from dna_viewer import DNA, Config, RigConfig, build_meshes, build_rig, get_skin_weights_from_scene, set_skin_weights_to_scene

# -----------------------------------------------------------------------------
# Configuration and Paths
# -----------------------------------------------------------------------------
ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
WORK_DIR = os.environ.get('WORK_DIR', ROOT_DIR)
DATA_DIR = os.path.join(ROOT_DIR, 'data')
LIB_DIR = os.path.join(ROOT_DIR, 'lib', f'Maya{cmds.about(version=True)}', 'windows')

# User-defined assets
ASSET_NAME = 'fskikIND_asset'
CHARACTER_NAME = 'Karnival'
UP_AXIS = 'z'

# Directories
TEMP_DIR = os.path.join(WORK_DIR, 'temp')
OUTPUT_DIR = os.path.join(WORK_DIR, 'output')

# DNA paths
ORIGINAL_DNA = os.path.join(WORK_DIR, 'dna', 'Ada.dna')
MESH_DNA = os.path.join(WORK_DIR, 'dna', f'{CHARACTER_NAME}_mesh.dna')
JOINT_DNA = os.path.join(WORK_DIR, 'dna', f'{CHARACTER_NAME}_jnt.dna')
FINAL_DNA = os.path.join(WORK_DIR, 'dna', f'{CHARACTER_NAME}_final.dna')
ROTATED_DNA = FINAL_DNA + '.rotated.dna'

SURFACE_JOINTS = [...]  # Populate from existing list
BODY_JOINTS = [...]     # Populate from existing list

# Ensure directories
os.makedirs(TEMP_DIR, exist_ok=True)
os.makedirs(OUTPUT_DIR, exist_ok=True)

# -----------------------------------------------------------------------------
# Utility Functions
# -----------------------------------------------------------------------------
def read_dna(path):
    stream = FileStream(path, FileStream.AccessMode_Read, FileStream.OpenMode_Binary)
    reader = BinaryStreamReader(stream, DataLayer_All)
    reader.read()
    if not Status.isOk(): raise RuntimeError(Status.get().message)
    return reader

def save_dna(reader, path):
    stream = FileStream(path, FileStream.AccessMode_Write, FileStream.OpenMode_Binary)
    writer = BinaryStreamWriter(stream)
    writer.setFrom(reader)
    writer.write()

    if not Status.isOk():
        status = Status.get()
        raise RuntimeError(f"Error saving DNA: {status.message}")

    print(f"DNA {path} successfully saved.")


# ... additional utilities: save_dna, get_mesh_positions, find_and_save_joint_positions, etc.

# -----------------------------------------------------------------------------
# Core Processors
# -----------------------------------------------------------------------------
class DNAProcessor:
    def __init__(self, dna_path):
        self.reader = read_dna(dna_path)
        self.calibrated = DNACalibDNAReader(self.reader)

    def rotate(self, angles=(90,0,0)):
        RotateCommand(list(angles), [0,0,0]).run(self.calibrated)

    def update_vertices(self, mesh_index, old, new):
        deltas = [[n - o for n, o in zip(nv, ov)] for nv, ov in zip(new, old)]
        self.calibrated.add_command(SetVertexPositionsCommand(mesh_index, deltas, VectorOperation_Add))
        self.calibrated.add_command(CalculateMeshLowerLODsCommand())
        self.calibrated.run()

    def update_joints(self, translations, rotations):
        self.calibrated.add_command(SetNeutralJointTranslationsCommand(translations))
        self.calibrated.add_command(SetNeutralJointRotationsCommand(rotations))
        self.calibrated.run()

    def save(self, path):
        stream = FileStream(path, FileStream.AccessMode_Write, FileStream.OpenMode_Binary)
        writer = BinaryStreamWriter(stream)
        writer.setFrom(self.calibrated)
        writer.write()

# ... MeshProcessor, SkinProcessor, BodyScaler, FBXExporter etc.

# -----------------------------------------------------------------------------
# Main Workflow
# -----------------------------------------------------------------------------
def main():
    # Load initial DNA and build scene
    show_meshes(ORIGINAL_DNA)
    dna_proc = DNAProcessor(ORIGINAL_DNA)

    # 1) Save joint positions
    find_and_save_joint_positions(dna_proc.reader, SURFACE_JOINTS, os.path.join(TEMP_DIR, 'joint_positions.json'))

    # 2) Import new model and transfer vertex order
    cmds.file(f'{WORK_DIR}/model/{CHARACTER_NAME}_remodel2.obj', i=True)
    # Transfer code...

    # 3) Update vertices and joints
    # 4) Save intermediate DNAs

    # 5) Final assembly and export FBX
    assemble_scene(FINAL_DNA)
    export_all_lods(FINAL_DNA, OUTPUT_DIR)

if __name__ == '__main__':
    main()
