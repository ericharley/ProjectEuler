def all_perms(str):
    if len(str) <=1:
        yield str
    else:
        for perm in all_perms(str[1:]):
            for i in range(len(perm)+1):
                yield perm[:i] + str[0:1] + perm[i:]

for p in all_perms(['0','1','2','3','4','5','6','7','8','9']):
 q = [1,2,3,4,5,6,7,8,9,0]
 A = 100*q[2-1]+ 10*q[3-1] + q[4-1] 
 B = 100*q[3-1]+ 10*q[4-1] + q[5-1] 
 C = 100*q[4-1]+ 10*q[5-1] + q[6-1] 
 D = 100*q[5-1]+ 10*q[6-1] + q[7-1] 
 E = 100*q[6-1]+ 10*q[7-1] + q[8-1] 
 F = 100*q[7-1]+ 10*q[8-1] + q[9-1] 
 G = 100*q[8-1]+ 10*q[9-1] + q[10-1]
 if ( (A %  2 == 0) and (B %  3 == 0) and (C %  5 == 0) and (D %  7 == 0) and (E % 11 == 0) and (F % 13 == 0) and (G % 17 == 0)):
   print q

