clc; clear all; close all;

% Parameters
m = 12 + 100; % combined mass
k_p = 100*120;
k_d = 20*120;

t_max = 10; % Simulation time

x_0 = 0; % Initial displacement (m)
x_1 = -1.5; % Initial velocity (m/s)

X_0 = [x_0, x_1]; % Initial conditions

[t, y] = ode45(@HoverBoard, [0, t_max], X_0, [], m, k_p, k_d);

subplot(2,1,1),plot(t, y(:,1));
xlabel('Time (sec.)');
ylabel('Displacement (m)');
title('Hoverboard Simulation');
subplot(2,1,2),plot(t,y(:,2));
xlabel('Time (sec.)');
ylabel('Velocity (m/s)');