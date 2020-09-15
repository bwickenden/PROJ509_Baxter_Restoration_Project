a1 = 364.35; %Length S1
a2 = 374.29; %Length E1
a3 = 144.895; % Length W1
Px = 500; %Target in x
Py = -300; %Target in y
PZ = 0; %Target in Z -8000 -> 8000
z = 45; %chosen orientation
cz = cos(z);
sz = sin(z);
%c1 = cos(b1);
%c2 = cos(b2);
%s1 = sin(b1);


%Px = (a1*c1)+(a2+c12)+(a3*c123)
%Py = (a1*s1)+(a2*s12)+(a3*s123)
%z= b1+b2+b3

Pwx = Px - a3*cz %== a1*c1+a2*c12
Pwy = Py - a3*sz %== a1*s1+a2*s12

%Q =Pwx^2+Pwy^2
%Pwx^2+Pwy^2 =a1^2 +a2^2 +2*a1*a2*c2

c2= (Pwx^2 + Pwy^2 -a1^2 -a2^2)/(2*a1*a2) 



s2= sqrt(1-c2^2) %need to find a way to implement +/-

b2= atan2(s2,c2)


s1= ((a1+ a2*c2)*Pwy -a2*s2*Pwx)/(Pwx^2 + Pwy^2)

c1 = ((a1+a2*c2)*Pwx+a2*s2*Pwy)/(Pwx^2 + Pwy^2)
b1 = atan2(s1,c2)

b3 = z-b1-b2

Z0 = atan2(PZ,Px)


