clc; clear all; close all;
% Solve the MSDamper function under different conditions

%initial condition set up

m =  1;     %mass of the system
k =  1;  % stiffness of the spring
c =  1;    %viscosity damping
t_max = 5; %simulation time 5 s



%options = odeset('Refine',6,'RelTol',1e-4);

x_0 =  0;   %initial displacement
x_d_0 = 0; %initial velocity
X_0 = [x_0; x_d_0];  %initial condition

[t,y] = ode45(@MSDamper, [0,t_max], X_0,[],m,k,c); %y(:,1) is the displacement; y(:,2) is the velocity

subplot(2,1,1),plot(t,y(:,1));
xlabel('Time (sec.)');
ylabel('Displacement (m)');
title('Mass-Spring systems');
subplot(2,1,2),plot(t,y(:,2));
xlabel('Time (sec.)');
ylabel('Velocity (m/sec.)');

