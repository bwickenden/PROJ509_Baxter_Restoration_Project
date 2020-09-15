robot = loadrobot("rethinkBaxter","DataFormat","column","Gravity",[0 0 -9.81]);
numJoints = numel(homeConfiguration(robot));

% Set up simulation parameters
tSpan = 0:0.01:0.5;
q0 = zeros(numJoints,1);
q0(2) = pi/4; % Something off center
qd0 = zeros(numJoints,1);
initialState = [q0; qd0];
k=8;
% n= 1;
%S0 = theta4;
%S1 = theta1;
%E0 =theta5;
%E1 = theta2;
%W0 =theta6;
%W1 = theta3;
%W2 =theta7;

% Left Arm
S0 = 2*pi;
S1 = 2*pi;
E0 = 0;
E1 = -0.05;
W0 = 0;
W1 = 0;
W2 = 0;


%Right Arm

% s0 = pi;
% s1 = pi;
% e0 = -pi/2;
% e1 = pi/4;
% w0 = pi/2;
% w1 = 2*pi;
% w2 = pi/2;

% Set up joint control targets

% ---------------------bd   S0 S1 E0   E1   W0    W1  W2 
targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointVelocity = zeros(numJoints,1);
targetJointAcceleration = zeros(numJoints,1);
show(robot,targetJointPosition)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    B    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Left 
% S0 = 5.49779;
% S1 = 2*pi;
% E0 = 6.28319;
% E1 = 1.5708;
% W0 = 0;
% W1 = 0;
% W2 = 0;
% 
% %Right
% s0 = 5.49779;
% s1 = 2*pi;
% e0 = 6.28319;
% e1 = 0;
% w0 = 0;
% w1 = 0;
% w2 = 0;
% pause(1);
% 
% targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
% show(robot,targetJointPosition)
% 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %Left 
% S0 = 5.49779;
% S1 = 2*pi;
% E0 = 6.28319;
% E1 = 1.5708;
% W0 = 0;
% W1 = 0;
% W2 = 0;
% 
% %Right
% s0 = 5.49779;
% s1 = 2*pi;
% e0 = 6.28319;
% e1 = 0.785398;
% w0 = 0;
% w1 = 0;
% w2 = 0;
% pause(1);
% 
% 
% targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
% show(robot,targetJointPosition)
% 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% X %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Left 
% S0 = 0.785398;
% S1 = 2*pi;
% E0 = 6.28319;
% E1 = 0.785398;
% W0 = 0;
% W1 = 0;
% W2 = 0;
% 
% %Right
% s0 = 1.5708;
% s1 = 2*pi;
% e0 = 3.14159;
% e1 = 0.785398;
% w0 = 0;
% w1 = 0;
% w2 = 0;
% pause(1);
% 
% 
% targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
% show(robot,targetJointPosition)
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% T %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Left 
% S0 = 5.49779;
% S1 = 5.49779;
% E0 = pi;
% E1 = 0.785398;
% W0 = 0;
% W1 = 0;
% W2 = 0;
% 
% %Right
% s0 = 5.49779;
% s1 = 5.49779;
% e0 = pi;
% e1 = 0;
% w0 = 0;
% w1 = 0;
% w2 = 0;
% pause(1);
% 
% 
% targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
% show(robot,targetJointPosition)
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% E %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Left 
% S0 = 0.785398;
% S1 = 5.49779;
% E0 = pi;
% E1 = 0;
% W0 = 0;
% W1 = 0;
% W2 = 0;
% 
% %Right
% s0 = 0.785398;
% s1 = 2*pi;
% e0 = 6.28319;
% e1 = 1.5708;
% w0 = 0;
% w1 = 0;
% w2 = 0;
% pause(1);
% 
% targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
% show(robot,targetJointPosition)
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% R %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Left 
% S0 = 0.785398;
% S1 = 2*pi;
% E0 = 0;
% E1 = 0;
% W0 = 0;
% W1 = 0;
% W2 = 0;
% 
% %Right
% s0 = 5.49779;
% s1 = 2*pi;
% e0 = 6.28319;
% e1 = 0;
% w0 = 0;
% w1 = 0;
% w2 = 0;
% pause(1);
% 
% targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
% show(robot,targetJointPosition)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% targetJointPosition = [2*pi 2*pi pi pi pi/4 pi 2*pi pi/2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
% show(robot,targetJointPosition)
% 
% pause(1);
% targetJointPosition = [2*pi 2*pi 2*pi pi pi/4 pi/2 2*pi pi/2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
% show(robot,targetJointPosition)
% 
% pause(1);
% targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
% show(robot,targetJointPosition)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% for s1 = 0:-0.1:-2.147
%  s1
% targetJointPosition = [2*pi S0 s1 E0 E1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
%   targetJointPosition = [2*pi S0 s1 E0 E1 W0 W1 W2 S0 s1 -E0 E1 W0 W1 W2 ]';
% show(robot,targetJointPosition)
%  pause(0.2);
% end

while 1
        
% n = input('Enter a character: ');
% 
% switch n

n = input('Type Baxter in capitals: ','s');
n=n(1);
switch true
    case n == 'B'
%         disp('negative one')
%Left 
S0 = 5.49779;
S1 = 2*pi;
E0 = 6.28319;
E1 = 1.5708;
W0 = 0;
W1 = 0;
W2 = 0;

%Right
s0 = 5.49779;
s1 = 2*pi;
e0 = 6.28319;
e1 = 0;
w0 = 0;
w1 = 0;
w2 = 0;
pause(1);

targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
show(robot,targetJointPosition)

    case n == 'A'
%         disp('zero')
        %Left 
S0 = 5.49779;
S1 = 2*pi;
E0 = 6.28319;
E1 = 1.5708;
W0 = 0;
W1 = 0;
W2 = 0;

%Right
s0 = 5.49779;
s1 = 2*pi;
e0 = 6.28319;
e1 = 0.785398;
w0 = 0;
w1 = 0;
w2 = 0;
pause(1);


targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
show(robot,targetJointPosition)

        
    case n == 'X'
%         disp('positive one')

%Left 
S0 = 0.785398;
S1 = 2*pi;
E0 = 6.28319;
E1 = 0.785398;
W0 = 0;
W1 = 0;
W2 = 0;

%Right
s0 = 1.5708;
s1 = 2*pi;
e0 = 3.14159;
e1 = 0.785398;
w0 = 0;
w1 = 0;
w2 = 0;
pause(1);


targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
show(robot,targetJointPosition)
    case n == 'T'
%         disp('zero')
%Left 
S0 = 5.49779;
S1 = 5.49779;
E0 = pi;
E1 = 0.785398;
W0 = 0;
W1 = 0;
W2 = 0;

%Right
s0 = 5.49779;
s1 = 5.49779;
e0 = pi;
e1 = 0;
w0 = 0;
w1 = 0;
w2 = 0;
pause(1);


targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
show(robot,targetJointPosition)

    case n == 'E'
%         disp('positive one')

%Left 
S0 = 0.785398;
S1 = 5.49779;
E0 = pi;
E1 = 0;
W0 = 0;
W1 = 0;
W2 = 0;

%Right
s0 = 0.785398;
s1 = 2*pi;
e0 = 6.28319;
e1 = 1.5708;
w0 = 0;
w1 = 0;
w2 = 0;
pause(1);

targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
show(robot,targetJointPosition)
        
    case n == 'R'
%         disp('positive one')
%Left 
S0 = 0.785398;
S1 = 2*pi;
E0 = 0;
E1 = 0;
W0 = 0;
W1 = 0;
W2 = 0;

%Right
s0 = 5.49779;
s1 = 2*pi;
e0 = 6.28319;
e1 = 0;
w0 = 0;
w1 = 0;
w2 = 0;
pause(1);

targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 s0 s1 e0 e1 w0 w1 w2 ]';
show(robot,targetJointPosition)
    

    otherwise
        disp('other value')
end

end
