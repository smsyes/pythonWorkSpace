import math
from collections import namedtuple

Quaternion = namedtuple('Quaternion', 'w x y z')
Euler = namedtuple('Euler', 'x y z')

def crop_rotation(angle):
    if angle > 180:
        return angle-360
    elif angle < -180:
        return angle+360
    else:
        return angle

def convert_to_radians(degrees):
    return (degrees/180) * math.pi

def convert_to_degrees(radians):
    return (radians*180) / math.pi

def quaternion_to_euler(q):
    sqw = q.w * q.w
    sqx = q.x * q.x
    sqy = q.y * q.y
    sqz = q.z * q.z

    normal = math.sqrt(sqw + sqx + sqy + sqz)
    pole_result = (q.x * q.z) + (q.y * q.w)

    if (pole_result > (0.5 * normal)): # singularity at north pole
        ry = math.pi/2 #heading/yaw?
        rz = 0 #attitude/roll?
        rx = 2 * math.atan2(q.x, q.w) #bank/pitch?
        return Euler(rx, ry, rz)
    if (pole_result < (-0.5 * normal)): # singularity at south pole
        ry = -math.pi/2
        rz = 0
        rx = -2 * math.atan2(q.x, q.w)
        return Euler(rx, ry, rz)

    r11 = 2*(q.x*q.y + q.w*q.z)
    r12 = sqw + sqx - sqy - sqz
    r21 = -2*(q.x*q.z - q.w*q.y)
    r31 = 2*(q.y*q.z + q.w*q.x)
    r32 = sqw - sqx - sqy + sqz

    rx = math.atan2( r31, r32 )
    ry = math.asin ( r21 )
    rz = math.atan2( r11, r12 )

    return Euler(rx, ry, rz)
    
def euler_to_quaternion(angle_x, angle_y, angle_z):
    heading  = convert_to_radians(angle_y)
    attitude = convert_to_radians(angle_z)
    bank     = convert_to_radians(angle_x)

    c1 = math.cos(heading/2)
    c2 = math.cos(attitude/2)
    c3 = math.cos(bank/2)

    s1 = math.sin(heading/2)
    s2 = math.sin(attitude/2)
    s3 = math.sin(bank/2)

    w = (c1 * c2 * c3) - (s1 * s2 * s3)
    x = (s1 * s2 * c3) + (c1 * c2 * s3)
    y = (s1 * c2 * c3) + (c1 * s2 * s3)
    z = (c1 * s2 * c3) - (s1 * c2 * s3)
    
    return Quaternion(w, x, y, z)

def test_q2e(q):
    rotations = quaternion_to_euler(q)
    rx = crop_rotation( convert_to_degrees( rotations.x ) *-1 )
    ry = crop_rotation( convert_to_degrees( rotations.y ) )
    rz = crop_rotation( convert_to_degrees( rotations.z ) )
    e = Euler(rx, ry, rz)
    print( e)
    return e
    
def test_e2q(e):
    angleX = crop_rotation(e.x*-1)
    angleY = crop_rotation(e.y*-1)
    angleZ = crop_rotation(e.z)

    q = euler_to_quaternion(angleX, angleY, angleZ)
    print( q)
    return q

test1 = Quaternion(-0.5, -0.5, 0.5, 0.5)
test2 = Quaternion(-0.707107, 0, -0.707107, 0)
test3 = Quaternion(-3.09086e-08, 0.707107, 3.09086e-08, 0.707107)
test4 = Euler(30,35,120)

print( str(test1)+" #Original Quaternion"+str(test1 == test_e2q( test_q2e( test1 ) ))+"")
print( str(test2)+" #Original Quaternion"+str(test2 == test_e2q( test_q2e( test2 ) ))+"")
print( str(test3)+" #Original Quaternion"+str(test3 == test_e2q( test_q2e( test3 ) ))+"")
print( str(test4)+" #Original Quaternion"+str(test4 == test_q2e( test_e2q( test4 ) ))+"")