part_dict = {}
direct_dict = {}
sub_dict = {}
type_dict = {}

#___________________________________________
part_dict['root'] = 'root'
part_dict['spine'] = 'spine'
part_dict['neck'] = 'neck'
part_dict['head'] = 'head'
part_dict['scapula'] = 'scapula'
part_dict['shoulder'] = 'shoulder'
part_dict['elbow'] = 'elbow'
part_dict['wrist'] = 'wrist'
part_dict['thumb'] = 'thumb'
part_dict['index'] = 'index'
part_dict['middle'] = 'middle'
part_dict['ring'] = 'ring'
part_dict['pinky'] = 'pinky'
part_dict['coxa'] = 'coxa'
part_dict['leg'] = 'leg'
part_dict['knee'] = 'knee'
part_dict['ankle'] = 'ankle'
part_dict['foot'] = 'foot'
part_dict['toe'] = 'toe'

#___________________________________________
direct_dict['M'] = 'M'
direct_dict['L'] = 'L'
direct_dict['R'] = 'R'
direct_dict['F'] = 'F'
direct_dict['B'] = 'B'

#___________________________________________
sub_dict['finger'] = 'finger'
sub_dict['toe'] = 'toe'
sub_dict['bend'] = 'bned'

#___________________________________________
type_dict['joint'] = 'JNT'
type_dict['control'] = 'CTL'
type_dict['offset'] = 'off'
type_dict['space'] = 'spc'
type_dict['subtract'] = 'subt'
type_dict['fit'] = 'fit'


def load_dic(key):
    if key in part_dict:
        dict_ = part_dict[key]
    if key in direct_dict:
        dict_ = direct_dict[key]
    if key in sub_dict:
        dict_ = sub_dict[key]
    if key in type_dict:
        dict_ = type_dict[key]
    return dict_