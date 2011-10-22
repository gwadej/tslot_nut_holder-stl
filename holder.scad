ht = 2.85;
L=3.08;
s=5.34/2;   // L * sqrt(3)/2
difference() {
      translate(v=[0,0,ht/2]) union() {
           translate(v=[0,-0.5,0]) cube(size = [6,6,ht], center=true );
           translate(v=[0,3.5,0]) cube(size=[8,2,ht], center=true );
     }
       union() {
          scale(v=[0.1,0.1,1]) cylinder(ht*2.5,r=16,center=true);
          translate(v=[0,0,ht/2+0.5]) linear_extrude(height=ht,center=true,twist=0) polygon(
                points=[[0,L], [s,L/2], [s,-L/2], [0,-L], [-s,-L/2], [-s,L/2]],
                paths = [[0,1,2,3,4,5]] );
      }
}
