robot = loadrobot("rethinkBaxter","DataFormat","column","Gravity",[0 0 -9.81]);
numJoints = numel(homeConfiguration(robot));

% Set up simulation parameters
tSpan = 0:0.01:0.5;
q0 = zeros(numJoints,1);
q0(2) = pi/4; % Something off center
qd0 = zeros(numJoints,1);
initialState = [q0; qd0];

% Set up joint control targets
% ---------------------bd   S0 S1 E0   E1   W0    W1  W2   
targetJointPosition = [2*pi pi pi pi/2 pi/4 pi/2 2*pi pi/2 pi pi -pi/2 pi/4 pi/2 2*pi pi/2 ]';
targetJointVelocity = zeros(numJoints,1);
targetJointAcceleration = zeros(numJoints,1);

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

computedTorqueMotion = jointSpaceMotionModel("RigidBodyTree",robot,"MotionType","ComputedTorqueControl");
updateErrorDynamicsFromStep(computedTorqueMotion,0.2,0.1);


qDesComputedTorque = [targetJointPosition; targetJointVelocity; targetJointAcceleration];

IndepJointMotion = jointSpaceMotionModel("RigidBodyTree",robot,"MotionType","IndependentJointMotion");
updateErrorDynamicsFromStep(IndepJointMotion,0.2,0.1);

qDesIndepJoint = [targetJointPosition; targetJointVelocity; targetJointAcceleration];

pdMotion = jointSpaceMotionModel("RigidBodyTree",robot,"MotionType","PDControl");
pdMotion.Kp = diag(300*ones(1,15));
pdMotion.Kd = diag(10*ones(1,15));

qDesPD = [targetJointPosition; targetJointVelocity];

[tComputedTorque,yComputedTorque] = ode45(@(t,y)derivative(computedTorqueMotion,y,qDesComputedTorque),tSpan,initialState);
[tIndepJoint,yIndepJoint] = ode45(@(t,y)derivative(IndepJointMotion,y,qDesIndepJoint),tSpan,initialState);
[tPD,yPD] = ode15s(@(t,y)derivative(pdMotion,y,qDesPD),tSpan,initialState);

% Computed Torque Control
figure
subplot(2,1,1)
plot(tComputedTorque,yComputedTorque(:,1:numJoints)) % Joint position
hold all
plot(tComputedTorque,targetJointPosition*ones(1,length(tComputedTorque)),'--') % Joint setpoint
title('Computed Torque Motion: Joint Position')
xlabel('Time (s)')
ylabel('Position (rad)')
subplot(2,1,2)
plot(tComputedTorque,yComputedTorque(:,numJoints+1:end)) % Joint velocity
title('Joint Velocity')
xlabel('Time (s)')
ylabel('Velocity (rad/s)')


% Independent Joint Motion
figure
subplot(2,1,1)
plot(tIndepJoint,yIndepJoint(:,1:numJoints))
hold all
plot(tIndepJoint,targetJointPosition*ones(1,length(tIndepJoint)),'--')
title('Independent Joint Motion: Position')
xlabel('Time (s)')
ylabel('Position (rad)')
subplot(2,1,2);
plot(tIndepJoint,yIndepJoint(:,numJoints+1:end))
title('Joint Velocity')
xlabel('Time (s)')
ylabel('Velocity (rad/s)')


% PD with Gravity Compensation
figure
subplot(2,1,1)
plot(tPD,yPD(:,1:numJoints))
hold all
plot(tPD,targetJointPosition*ones(1,length(tPD)),'--')
title('PD Controlled Joint Motion: Position')
xlabel('Time (s)')
ylabel('Position (rad)')
subplot(2,1,2)
plot(tPD,yPD(:,numJoints+1:end))
title('Joint Velocity')
xlabel('Time (s)')
ylabel('Velocity (rad/s)')

exampleHelperRigidBodyTreeAnimation(robot,yComputedTorque,1);
exampleHelperRigidBodyTreeAnimation(robot,yIndepJoint,1);
exampleHelperRigidBodyTreeAnimation(robot,yPD,1);


