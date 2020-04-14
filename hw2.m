clc
close all
load('parameters.mat')
out = sim('fourbar');
len = length(out.Ja_t.data);
space = linspace(0, 2 * pi, len);
data(1:2, 1:len) = 0;
data(1, :) = space;
data(2, :) = out.Ja_t.data;
m(1:2, 1:len) = 0;
m(1, :) = space;
m(2, :) = mean(data(2, :));

inter = InterX(data, m);

w_min = 0;
end_point = 1;
for i = 1:len
    if data(1, i) > inter(1, 2)
        end_point = i;
        break
    end
    w_min = w_min + data(2, i) - m(2, i);
end
fprintf('%f\n', w_min)

w_max = -w_min;
for i = end_point:len
    if data(1, i) > inter(1, 3)
        break
    end
    w_max = w_max + data(2, i) - m(2, i);
end
fprintf('%f\n', w_max)

k = 0.05;
w_avg = (w_max - w_min) / k;
dE = sum(data(2, :));

I = dE / (k * w_avg^2);

plot(data(1, :), data(2, :))
hold on
plot(m(1, :), m(2, :), '--')
in_2pi

function in_2pi
xlabel('rad')
ylabel('N \cdot m')
xticks([0, pi / 2, pi, pi * 3 / 2, pi * 2])
xticklabels({'0','1/2\pi','\pi','3/2\pi', '2\pi'})
axis([0, 2 * pi, 0, 1])
axis 'auto y'
end
