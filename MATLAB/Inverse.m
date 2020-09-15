load exampleRobots.mat
showdetails(baxter)

randConfig = baxter.randomConfiguration;
tform = getTransform(baxter,randConfig,'right_upper_shoulder','base');
show(baxter,randConfig);

%ik = inverseKinematics('RigidBodyTree',baxter);
%weights = [0.25 0.25 0.25 1 1 1];
%initialguess = baxter.homeConfiguration;