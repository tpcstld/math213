
function dx = MSDamper(t,x,m,k,c)
%This program generates the Mass Spring Damper system equation mx''+cx'+ kx = 0. 
% where m is the mass of the system
% k is the stiffness of the spring
% c is the viscosity damping
% x is displacement.

xd1 = x(2); %%first order derivative
xd2 = -(c/m)*x(2) - (k/m)*x(1);  %%second order derivative

dx = [xd1; xd2];
end

