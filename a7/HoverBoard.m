function dx = HoverBoard(t, x, m, k_p, k_d)

xd1 = x(2);
xd2 = (-k_p*x(1) - k_d*x(2))/m;

dx = [xd1; xd2];
end