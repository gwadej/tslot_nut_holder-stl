ht = 2.85;            // Height of holder ~thickness of nut
measured_width=5.34;  // width of nut, flat-to-flat
fudge=1.16;           // Change the size of the hole, side effect of printing resolution
s=(measured_width/2)*fudge;
L=s/0.866;
w=5.5;
base=0.6;
difference() {
      translate(v=[0,0,ht/2]) union() {
           translate(v=[0,-0.5,0]) cube(size = [w,7.5,ht], center=true );
           translate(v=[0,4.25,0]) cube(size=[w+2,2,ht], center=true );
     }
      union() {
          scale(v=[0.1,0.1,1]) cylinder(ht*2.5,r=18,center=true);
          translate(v=[0,0,ht/2+base]) linear_extrude(height=ht,center=true,twist=0) polygon(
                points=[[0,L], [s,L/2], [s,-L/2], [0,-L], [-s,-L/2], [-s,L/2]],
                paths = [[0,1,2,3,4,5]]
          );
          translate(v=[0,0,ht/2+base]) cube(size=[w+1,L,ht],center=true);
      }
}
