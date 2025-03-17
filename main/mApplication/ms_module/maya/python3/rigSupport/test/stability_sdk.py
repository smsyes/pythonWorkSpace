# -*- coding: utf-8 -*-
"""============================================================================
# https://github.com/Stability-AI/stability-sdk
============================================================================"""
from PIL import Image
from stability_sdk import client
import stability_sdk.interfaces.gooseai.generation.generation_pb2 as generation

import getpass
import os
import io
import warnings

import pymel.core as pm

# os.environ['STABILITY_KEY'] = getpass.getpass('Enter your API Key')

image_dir = pm.workspace(fileRuleEntry='sourceImages')
image_dir = pm.workspace(expandName = image_dir)

image_name = 'gen_0.png'


stability_api = client.StabilityInference(key=os.environ['STABILITY_KEY'], verbose=True)

input_prompt = 'reality human, smile'

answers = stability_api.generate(prompt=input_prompt)

# iterating over the generator produces the api response
for resp in answers:
    for artifact in resp.artifacts:
        if artifact.finish_reason == generation.FILTER:
            warnings.warn(
                "Your request activated the API's safety filters and could not be processed."
                "Please modify the prompt and try again.")
        if artifact.type == generation.ARTIFACT_IMAGE:
            img = Image.open(io.BytesIO(artifact.binary))
            img.save(fp=os.path.join(image_dir, image_name))
            
pm.setAttr('sd_image.fileTextureName', image_name)