%Run vars.m before running 

l1 = a1; % length of first arm
l2 = a2; % length of second arm
l3 = a3;

%Bend joints
theta1 = -2.147:0.1:1.047; % all possible theta1 values %S1
theta2 = -0.05:0.1:2.618; % all possible theta2 values %E1
theta3 = -0.5707*pi:0.1:2.094; %all possible theta2 values %W1

%Twist joins
theta4 = -1.7016:0.1:1.7016; %S0
theta5 = -3.0541:0.1:3.0541; %E0
theta6 = -3.059:0.1:3.059; %W0
theta7 = -3.059:0.1:3.059; %W2

[THETA1,THETA2,THETA3] = meshgrid(theta1,theta2,theta3); % generate a grid of theta1 and theta2 values

X = l1 * cos(THETA1) + l2 * cos(THETA1 + THETA2)+ l3 *cos(THETA1 + THETA2 + THETA3); % compute x coordinates
Y = l1 * sin(THETA1) + l2 * sin(THETA1 + THETA2)+ l3 * sin(THETA1 + THETA2 + THETA3); % compute y coordinates

data1 = [X(:) Y(:) THETA1(:)]; % create x-y-theta1 dataset
data2 = [X(:) Y(:) THETA2(:)]; % create x-y-theta2 dataset
data3 = [X(:) Y(:) THETA3(:)]; % Create x-theta3 dataset

  plot(X(:),Y(:),'r.'); 
  axis equal;
  xlabel('X','fontsize',10)
  ylabel('Y','fontsize',10)
  title('X-Y coordinates generated for all theta1 and theta2 and theta3 combinations using forward kinematics formula','fontsize',10)
