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
S0 = Z0;
S1 = b1;
E0 = 0;
E1 = b2;
W0 = 0;
W1 = b3;
W2 = 0;

% Set up joint control targets



 targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
 show(robot,targetJointPosition)
 
 pause(1);
% targetJointPosition = [2*pi 2*pi 2*pi pi pi/4 pi/2 2*pi pi/2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
% show(robot,targetJointPosition)
% 
% pause(1);
% targetJointPosition = [2*pi S0 S1 E0 E1 W0 W1 W2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
% show(robot,targetJointPosition)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%