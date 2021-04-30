import maya.cmds as cmds
import pymel.core as pm

sels = cmds.ls(sl=1)

new_obj = sels[0]
ori_obj = sels[1]



new_shape = cmds.listRelatives(new_obj, shapes =1, children=1)[0]
ori_shape = cmds.listRelatives(ori_obj, shapes =1, children=1)[0]


cmds.CreateWrap(new_obj)


object_= ori_obj
deform_list = cmds.findDeformers(object_ )
blend_deform_list = []
for deform in deform_list:
    if cmds.objectType(deform) == 'blendShape':
        blend_deform_list.append(deform)
        
    else:
        pass




blend_node = blend_deform_list[0]
blend_weight = cmds.getAttr(blend_node + '.weight')[0]









blend_target_list = cmds.listAttr (blend_node + ".w", m=1) 



new_target_list = []
new_target_sh_list = []
main_target_list = []
inbetween_target_list = []



blend_node = pm.PyNode(blend_deform_list[0])
blend_number = blend_node.weightIndexList()

blend_number_list = range(len(blend_number))





for list_num,num,a in zip(blend_number_list,blend_number,blend_weight):  
  
    

        
 
    target_weight_list = blend_node.targetItemIndexList(num, ori_shape) 
    target_amount = len(target_weight_list)
    
    
    
    

    for i in target_weight_list:
        
      
        

        if i == 6000:
            appendValue = float(1)
            
        else:
            if str(i)[-1] == '0':
                i_final = str(i)[:-1] 
                if str(i_final)[-1] == '0':
                    i_final_final = str(i_final)[:-1]
                    new_i = int(i_final_final[1:])                
                    appendValue = float('%d.%d'%( 0 , new_i))
                    
                
                
                else:
                
                    new_i = int(i_final[1:])                
                    appendValue = float('%d.%d'%( 0 , new_i)) 
                       
                
                
                
            else:
                new_i = int(str(i)[1:])
                   
                appendValue = float('%d.%d'%( 0 , new_i)) 
                



       
           
        cmds.setAttr(blend_node + '.weight' + '[%d]'%(num) , appendValue) 
        new_target = cmds.duplicate(new_obj, n=blend_target_list[list_num] + '_' + str(appendValue))[0] 
        cmds.setAttr(blend_node + '.weight' + '[%d]'%(num) , 0) 
        
        

        if '_1_0' in new_target:
            main_target = cmds.ls(blend_target_list[list_num] + '_1_0' )[0] 
            main_target_list.append(main_target)
            
            
        
        elif '_0_' in new_target:
            inbetween_target = cmds.ls(blend_target_list[list_num] + '_0_' + '%s'%(new_i))[0] 
            
            inbetween_target_list.append(inbetween_target)
            
            
        
        else:
            pass

          




main_target_list_re = []
for i in main_target_list:
    re = i.split('_1_0')[0]
    
    cmds.rename(i,re)
    main_target_list_re.append(re)

sel_main_target = cmds.ls(main_target_list_re)




sels = cmds.ls(sel_main_target)
d=[]
for sel in sels: 
    if '|' in sel:
        g = sel.split('|')
        k=g[-1]
        
        
        
      

        d.append(k) 
        
        
    else:
        pass
        

        
t=set([x for x in d if d.count(x) > 1])

j=list(t)
k=cmds.ls(j)


        
        
        
        
        
overlap_target = d[0::2] 



for list_tar_remove in k: 
    sel_main_target.remove(list_tar_remove)



for count_ in overlap_target: 
    
    
    sel_target = '|' + count_
   
    
    
    cmds.delete(sel_target)


    
      


cmds.select( sel_main_target,new_obj)
cmds.blendShape(n='new_' + blend_node)
cmds.select(cl=1)



new_deform_list = cmds.findDeformers(new_obj)
new_blend_deform_list = []
for new_deform in new_deform_list:
    if cmds.objectType(new_deform) == 'blendShape':
        new_blend_deform_list.append(new_deform)
new_blend_node = new_blend_deform_list[0]




main_num = len(main_target_list)
main_num_list = range(0,main_num)


inbet_list = []




for list_num,num,a in zip(blend_number_list,blend_number,blend_weight):  

        
    target_weight_list = blend_node.targetItemIndexList(num, ori_shape) 
    target_amount = len(target_weight_list)
    

    target_weight_list.pop()
    
    
   
    
    
    
    inbetween_value_list = []

    if target_weight_list >1 :
       
        
        
        for inbetween in target_weight_list :
            
            
            
            
            new_inbetween = int(str(inbetween)[1:]) 
            
            inbetween_value = float('%d.%d'%( 0 , new_inbetween))
           
           
            inbetween_value_list.append(inbetween_value)
            
            
    else:
        pass
            
            
            
    inbet_list.append(inbetween_value_list)







            


for main_num, inbet_wei in enumerate(inbet_list):
  
    
    
    
    if len(inbet_wei) >= 1:
      
        inbet_main_target = cmds.ls(main_target_list_re[main_num])[0]
      
        
        for inbet_weight in inbet_wei:
           
            
            
            re_ = '%s'%(inbet_weight)
            inbet_weight_num = re_.split(".")[1]
      
            
            
            inbetween_ = cmds.ls('%s_0_%s'%(inbet_main_target,inbet_weight_num))
            inbetween_shape = cmds.listRelatives(inbetween_, shapes =1, children=1)[0]
            
            

            cmds.blendShape(new_blend_node, e=1, ib=1, tc=1, ibt= 'absolute', t=(new_shape, main_num ,inbetween_shape, inbet_weight))
            
    else:
        pass
            
            

cmds.group( main_target_list_re, inbetween_target_list, n='new_target_GRP' )



find_deform_list = cmds.findDeformers(new_obj)
wrap_deform_list = []
for wrap_deform in find_deform_list:
    if cmds.objectType(wrap_deform) == 'wrap':
        wrap_deform_list.append(wrap_deform)
        
    else:
        pass
        
new_obj_wrap = wrap_deform_list[0]
cmds.delete (new_obj_wrap)

    
 
        
    
        
   







        
        
        





