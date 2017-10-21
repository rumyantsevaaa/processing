int a,b,x, y, r ; 
float alf; 
void setup() 
{ 
size (400,400); 
r=100; 
} 
void draw () 
{ 
background(20,52,40); 
alf=alf -3; 
fill(190,60,69); 
x=200+ round(r*cos(PI*alf/180)); 
y=200+ round(r*sin(PI*alf/180)); 
ellipse(x,y,30,30); 
alf=alf +5; 
fill(20,90,199); 
a=150- round(r*cos(PI*alf/180)); 
b=150- round(r*sin(PI*alf/180)); 
ellipse(a,b,20,20); 
}