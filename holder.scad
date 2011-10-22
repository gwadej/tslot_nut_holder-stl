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
          translate(v=[0,0,0.5]) polyhedron( points=[
                [0,L,ht], [s,L/2,ht], [s,-L/2,ht], [0,-L,ht], [-s,-L/2,ht], [-s,L/2,ht],
                [0,L,0], [s,L/2,0], [s,-L/2,0], [0,-L,0], [-s,-L/2,0], [-s,L/2,0],
           ],
           triangles=[
               [0,1,2], [2,3,0], [3,4,5], [5,0,3], //top
               [0, 6, 1], [1, 6, 7],
               [1, 7, 2], [2, 7, 8],
               [2, 8, 3], [3, 8, 9],
               [3, 9, 4], [4, 9,10],
               [4,10, 5], [5,10,11],
               [5,11, 6], [6,11, 0],
               [6,7,8], [8,9,6], [9,10,11], [11,6,9], //bottom
          ] );
      }
}
