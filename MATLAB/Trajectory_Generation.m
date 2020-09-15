robot = loadrobot("rethinkBaxter","DataFormat","column","Gravity",[0 0 -9.81]);
numJoints = numel(homeConfiguration(robot));

% Set up simulation parameters
tSpan = 0:0.01:0.5;
q0 = zeros(numJoints,1);
q0(2) = pi/4; % Something off center
qd0 = zeros(numJoints,1);
initialState = [q0; qd0];
n= 1;


% Set up joint control targets

% ---------------------bd   S0 S1 E0   E1   W0    W1  W2 
targetJointPosition = [2*pi pi pi pi/2 pi/4 pi/2 2*pi pi/2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointVelocity = zeros(numJoints,1);
targetJointAcceleration = zeros(numJoints,1);

show(robot,targetJointPosition)
targetJointPosition = [2*pi pi pi pi pi/4 pi 2*pi pi/2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)

pause(1);
targetJointPosition = [2*pi pi pi pi/2 pi/4 pi/2 2*pi pi/2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
show(robot,targetJointPosition)

%screen x 
%arms? 
%not sure
%left sholder
%left elbow
%left forearm roatae
%left wrist
%left end effector rotate
%left wrist
%left end effector rotate?



