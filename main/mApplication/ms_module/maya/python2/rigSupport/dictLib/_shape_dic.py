from collections import OrderedDict

shape_dict = OrderedDict()

#_______________________________________________________________________________
shape_dict['cube'] = 1, [(0.5,-0.5,0.5),(0.5,0.5,0.5),(0.5,0.5,-0.5),
(0.5,-0.5,-0.5),(0.5,-0.5,0.5),(-0.5,-0.5,0.5),(-0.5,0.5,0.5),(-0.5,0.5,-0.5),
(-0.5,-0.5,-0.5),(0.5,-0.5,-0.5),(0.5,0.5,-0.5),(-0.5,0.5,-0.5),
(-0.5,-0.5,-0.5),(-0.5,-0.5,0.5),(-0.5,0.5,0.5),(0.5,0.5,0.5)], [0 ,1 ,2 ,3 ,4 ,
5 ,6 ,7 ,8 ,9 ,10 ,11 ,12 ,13 ,14 ,15]

shape_dict['octah'] = 1, [(0,0.6,0),(0,0,-0.6),(-0.6,0,0),(0,0.6,0),(0,0,0.6),
(-0.6,0,0),(0,-0.6,0),(0,0,0.6),(0.6,0,0),(0,0.6,0),(0,0,-0.6),(0.6,0,0),
(0,-0.6,0),(0,0,-0.6)], [0,1,2,3,4,5,6,7,8,9,10,11,12,13]

shape_dict['sphere'] = 1, [(0,0,1),(0,0.309017,0.951056),(0,0.587785,0.809017),
(0,0.809017,0.587785),(0,0.951056,0.309017),(0,1,0),(0.309017,0.951056,0),
(0.587785,0.809017,0),(0.809017,0.587785,0),(0.951056,0.309017,0),(1,0,0),
(0.951056,0,0.309017),(0.809017,0,0.587785),(0.587785,0,0.809017),
(0.309017,0,0.951056),(0,0,1),(0,-0.309017,0.951056),(0,-0.587785,0.809017),
(0,-0.809017,0.587785),(0,-0.951056,0.309017),(0,-1,0),(0.309017,-0.951056,0),
(0.587785,-0.809017,0),(0.809017,-0.587785,0),(0.951056,-0.309017,0),(1,0,0),
(0.951056,0,-0.309017),(0.809017,0,-0.587785),(0.587785,0,-0.809017),
(0.309017,0,-0.951056),(0,0,-1),(0,0.309017,-0.951056),(0,0.587785,-0.809017),
(0,0.809017,-0.587785),(0,0.951056,-0.309017),(0,1,0),(-0.309017,0.951056,0),
(-0.587785,0.809017,0),(-0.809017,0.587785,0),(-0.951056,0.309017,0),(-1,0,0),
(-0.951056,0,-0.309017),(-0.809017,0,-0.587785),(-0.587785,0,-0.809017),
(-0.309017,0,-0.951056),(0,0,-1),(0,-0.309017,-0.951056),
(0,-0.587785,-0.809017),(0,-0.809017,-0.587785),(0,-0.951056,-0.309017),
(0,-1,0),(-0.309017,-0.951056,0),(-0.587785,-0.809017,0),
(-0.809017,-0.587785,0),(-0.951056,-0.309017,0),(-1,0,0),(-0.951056,0,0.309017),
(-0.809017,0,0.587785),(-0.587785,0,0.809017),(-0.309017,0,0.951056),(0,0,1)],[0,
1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,
30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,
56,57,58,59,60]

shape_dict['triangle'] = 1, [(0,0,1.5),(-1,0,0),(1,0,0),(0,0,1.5)],[0,1,2,3]

shape_dict['gear'] = 1, [(-0.4,0,0),(-0.2,0,-0.34641),(0.2,0,-0.34641),
(0.4,0,-3.72529e-08),(0.2,0,0.34641),(-0.2,0,0.34641),(-0.4,0,0),
(-1.366025,0,-5.96046e-08),(-0.866025,0,-0.5),(-0.683013,0,-1.183013),
(1.50996e-07,0,-1),(0.683013,0,-1.183013),(0.866025,0,-0.5),
(1.366025,0,-5.96046e-08),(0.866025,0,0.5),(0.683013,0,1.183013),(0,0,1),
(-0.683013,0,1.183013),(-0.866025,0,0.5),(-1.366025,0,-5.96046e-08)], [0,1,2,3,
4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]

shape_dict['circle'] = 1, [(0,0,1),(0.382683,0,0.92388),(0.707107,0,0.707107),
(0.92388,0,0.382683),(1,0,0),(0.92388,0,-0.382683),(0.707107,0,-0.707107),
(0.382683,0,-0.92388),(0,0,-1),(-0.382683,0,-0.92388),(-0.707107,0,-0.707107),
(-0.92388,0,-0.382683),(-1,0,0),(-0.92388,0,0.382683),(-0.707107,0,0.707107),
(-0.382683,0,0.92388),(0,0,1)],[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

shape_dict['pin'] = 1, [(0,0,0),(0,2,0),(1,3,0),(0,4,0),(-1,3,0),(0,2,0),
(0,3,1),(0,4,0),(0,3,-1),(1,3,0),(0,3,1),(-1,3,0),(0,3,-1),(0,2,0)], [0,1,2,3,
4,5,6,7,8,9,10,11,12,13]

shape_dict['square'] = 1, [(-1,0,1),(-1,0,-1),(1,0,-1),(1,0,1),(-1,0,1)], [0,
1,2,3,4]

shape_dict['roundSquare'] = 1, [(0,0,1.018961),(-0.27303,0,1.018961),
(-0.577061,0,0.98492),(-0.841496,0,0.841496),(-0.98492,0,0.577061),
(-1.0157,0,0.278849),(-1.012079,0,0),(-1.018961,0,-0.27303),
(-0.98492,0,-0.577061),(-0.841496,0,-0.841496),(-0.577061,0,-0.98492),
(-0.27303,0,-1.018961),(0,0,-1.012079),(0.278849,0,-1.0157),
(0.577061,0,-0.98492),(0.841496,0,-0.841496),(0.98492,0,-0.577061),
(1.018961,0,-0.27303),(1.018961,0,0),(1.016847,0,0.278849),
(0.98492,0,0.577061),(0.841496,0,0.841496),(0.577061,0,0.98492),
(0.27303,0,1.018961),(0,0,1.018961)],[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
17,18,19,20,21,22,23,24]

shape_dict['cross'] = 1, [(0,0,-1),(0,0,1),(0,0,0),(1,0,0),(-1,0,0)],[0,1,2,3,4]

shape_dict['locate'] = 1, [(0,-1,0),(0,1,0),(0,0,0),(-1,0,0),(1,0,0),(0,0,0),
(0,0,1),(0,0,-1)],[0,1,2,3,4,5,6,7]

shape_dict['circleHandler'] = 1, [(0,0,0.0810633),(0,-0.0476478,0.0655809),
(0,-0.0770958,0.0250494),(0,-0.0770958,-0.0250508),(0,-0.0476478,-0.0655821),
(0,0,-0.0810633),(0,0.0476478,-0.0655821),(0,0.0770958,-0.0250508),(0,0.0770958,0.0250494),
(0,0.0476478,0.0655809),(0,0,0.0810633),(0,0,1.821054),(0,0.356796,1.936983),
(0,0.577308,2.24049),(0,0.577308,2.615652),(0,0.356796,2.919159),(0,0,3.035094),
(0,-0.356796,2.919159),(0,-0.577308,2.615652),(0,-0.577308,2.24049),(0,-0.356796,1.936983),
(0,0,1.821054)],[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]

shape_dict['pyramid'] = 1, [(0,-2.238214,0),(2.89093,0,0),(0,2.238214,0),
(0,0,-2.23821),(2.89093,0,0),(0,0,2.23821),(0,-2.238214,0),(0,0,-2.23821),
(0,2.238214,0),(0,0,2.23821)],[0,1,2,3,4,5,6,7,8,9]

def load_dic(key):
    return shape_dict[key]