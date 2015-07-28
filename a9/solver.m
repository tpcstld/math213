c = 340.29; % Speed of sound (m/s)

L = c / 440 / 4; % Length of tube (m)

secs = 5
t = linspace(0, secs, 44100*secs+1);
p=0
n = 1;
while n <= 5
    p = p - 4 .* (-1)^n / pi / (2 .* n - 1) .* cos(pi .* c .* (2 .* n - 1) / 2 / L * t)
    n = n + 1;
end

p=p-mean(p);
p=p/max(abs(p));

audiowrite('har5.wav',p,44100);