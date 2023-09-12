# maya // Warning: 你的文件贼健康~我就说一声没有别的意思 //

jobs = cmds.scriptJob(lj=True)
for job in jobs:
    if "leukocyte.antivirus()" in job:
        id = job.split(":")[0]
        if id.isdigit():
            cmds.scriptJob(k=int(id), f=True)
 
script_nodes = cmds.ls("vaccine_gene", type="script")
if script_nodes:
    cmds.delete(script_nodes)
