[y, fs] = audioread('recording.wav');
[y1, fs1] = audioread('azim90elev0.wav');

out1 = conv(y, y1(:,1));
out2 = conv(y, y1(:,2));

out = horzcat(out1, out2);

sound(out, fs);