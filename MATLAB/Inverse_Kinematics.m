%Run vars.m before starting 

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
E0 = 0;
W0 = 0;
W2 = 0;

% Set up joint control targets
%Inverse Kinematics
targetJointPosition = [2*pi S0 b1 E0 b2 W0 b3 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)

%Inverse Kinematics Animated
% ---------------------bd   S0 S1 E0   E1   W0    W1  W2 
targetJointPosition = [2*pi S0 -2.0750 E0 2.0420 W0 0.3821 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
% targetJointVelocity = zeros(numJoints,1);
% targetJointAcceleration = zeros(numJoints,1);
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -2.0549 E0 2.0281 W0 0.3759 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -2.0350 E0 2.0136 W0 0.3759 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -2.0151 E0 1.9983 W0 0.3659 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.9952 E0 1.9823 W0 0.3619 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.9753 E0 1.9657 W0 0.3586 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.9552 E0 1.9484 W0 0.3559 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.9350 E0 1.9304 W0 0.3537 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.9146 E0 1.9117 W0 0.3520 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.8940 E0 1.8924 W0 0.3506 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.8730 E0 1.8725 W0 0.3496 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.8518 E0 1.8519 W0 0.3489 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.8301 E0 1.8307 W0 0.3485 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.8080 E0 1.8088 W0 0.3482 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.7854 E0 1.7863 W0 0.3481 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.7623 E0 1.7632 W0 0.3482 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.7387 E0 1.7394 W0 0.3483 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.7144 E0 1.7150 W0 0.3485 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.6895 E0 1.6900 W0 0.3486 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.6640 E0 1.6642 W0 0.3488 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);

targetJointPosition = [2*pi S0 -1.6377 E0 1.6378 W0 0.3489 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)
pause (0.2);







