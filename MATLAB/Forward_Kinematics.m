robot = loadrobot("rethinkBaxter","DataFormat","column","Gravity",[0 0 -9.81]);
numJoints = numel(homeConfiguration(robot));

% Set up simulation parameters
tSpan = 0:0.01:0.5;
q0 = zeros(numJoints,1);
q0(2) = pi/4; % Something off center
qd0 = zeros(numJoints,1);
initialState = [q0; qd0];
n= 1;
%S0 = theta4;
%S1 = theta1;
%E0 =theta5;
%E1 = theta2;
%W0 =theta6;
%W1 = theta3;
%W2 =theta7;
T1 = [-2.0750 -20549 -2.0350 -2.0151 -1.9952 -1.9753];
T2 = [2.0420 2.0281 2.0136 1.9983 1.9823 1.9657];
T3 = [0.3821 0.3759 0.3705 0.3659 0.3619 0.3586];
S0 = pi/4;
S1 = 2*pi;
E0 = 0;
E1 = -0.05;
W0 = 0;
W1 = 0;
W2 = 0;

% Set up joint control targets



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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for s1 = 0:-0.1:-2.147
 s1
% targetJointPosition = [2*pi S0 s1 E0 E1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
  targetJointPosition = [2*pi S0 s1 E0 E1 W0 W1 W2 S0 s1 -E0 E1 W0 W1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end

for s1 =theta1
    s1
   
% targetJointPosition = [2*pi S0 s1 E0 E1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi S0 s1 E0 E1 W0 W1 W2 S0 s1 -E0 E1 W0 W1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end
for s1 = 0.953:-0.1:0
 s1
% targetJointPosition = [2*pi S0 s1 E0 E1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi S0 s1 E0 E1 W0 W1 W2 S0 s1 -E0 E1 W0 W1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end

for e1 =theta2
    e1
   
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi S0 s1 E0 e1 W0 W1 W2 S0 s1 -E0 e1 W0 W1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end
for e1 = 2.618:-0.1:-0.05
 e1
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi S0 s1 E0 e1 W0 W1 W2 S0 s1 -E0 e1 W0 W1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end

for w1 = 0:-0.1:-0.5707
 w1
% targetJointPosition = [2*pi S0 s1 E0 w1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 S0 s1 -E0 e1 W0 w1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end

for w1 =theta3
    w1
   
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 S0 s1 -E0 e1 W0 w1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end
for w1 = 2.094:-0.1:0
 w1
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 S0 s1 -E0 e1 W0 w1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end

for s0 = 0:-0.1:-1.7016
 s0
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi s0 s1 E0 e1 W0 w1 W2 s0 s1 -E0 e1 W0 w1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end
for s0 = theta4
 s0
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi s0 s1 E0 e1 W0 w1 W2 s0 s1 -E0 e1 W0 w1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end

for s0 = 1.7016:-0.1:0
 s0
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi s0 s1 E0 e1 W0 w1 W2 s0 s1 -E0 e1 W0 w1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end

for e0 = 0:-0.1:-3.0541
 e0
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi s0 s1 e0 e1 W0 w1 W2 s0 s1 -e0 e1 W0 w1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end

for e0 = theta5
 e0
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi s0 s1 e0 e1 W0 w1 W2 s0 s1 -e0 e1 W0 w1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end

for e0 = -3.0541:0.1:0
    
    
    
 e0
% targetJointPosition = [2*pi S0 s1 E0 e1 W0 w1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointPosition = [2*pi s0 s1 e0 e1 W0 w1 W2 s0 s1 -e0 e1 W0 w1 W2 ]';
show(robot,targetJointPosition)
 pause(0.2);
end





