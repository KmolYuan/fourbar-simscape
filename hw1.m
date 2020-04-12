clc
close all
load('parameters.mat')
out = sim('fourbar');

% Unit: m*kg/s^2 (N)
ax = new_figure;
subplot(4, 1, 1)
show_force('Ja', out.Ja_f)
subplot(4, 1, 2)
show_force('Jb', out.Jb_f)
subplot(4, 1, 3)
show_force('Jc', out.Jc_f)
subplot(4, 1, 4)
show_force('Jd', out.Jd_f)
save_img(ax, 'rf')

ax = new_figure;
show_torque('Ja', out.Ja_t)
save_img(ax, 'rt')

% Shaking forces
ax = new_figure;
show_shaking_force(out.Ja_f, out.Jd_f)
save_img(ax, 'sf')

shaking_polar(out.Ja_f, out.Jd_f, [AD * 1e-3, 0, 0]', out.Ja_t)

function ax = new_figure()
ax = figure;
set(ax, 'WindowStyle', 'docked')
end

function show_force(name, data)
% hypot(data.Data(1, 1), data.Data(1, 2))
plot(space(data), data.Data(:, 1))
hold on
plot(space(data), data.Data(:, 2))
in_2pi(name)
end

function show_torque(name, data)
space = linspace(0, 2 * pi, length(data.Data));
plot(space, data.Data)
in_2pi(name)
end

function cp = shaking_force(p1, p2)
cp = p1;
cp.Data = p1.Data + p2.Data;
end

function cp = shaking_moment(f, r, t)
cp = f;
cp.Data = f.Data * r + t.Data;
end

function show_shaking_force(p1, p2)
show_force('Shaking Force', shaking_force(p1, p2))
end

function shaking_polar(p1, p2, r, t)
sf = shaking_force(p1, p2);
sf.Data = hypot(sf.Data(:, 1), sf.Data(:, 2));
sm = shaking_moment(p2, r, t);
ax = new_figure;
polarplot(space(sf), sf.Data)
title('Shaking force')
save_img(ax, 'sfp')
ax = new_figure;
polarplot(space(sm), sm.Data)
title('Shaking moment')
save_img(ax, 'smp')
end

function in_2pi(name)
xlabel('rad')
ylabel('N \cdot m')
xticks([0, pi / 2, pi, pi * 3 / 2, pi * 2])
xticklabels({'0','1/2\pi','\pi','3/2\pi', '2\pi'})
axis([0, 2 * pi, 0, 1])
axis 'auto y'
title(name)
end

function save_img(ax, file_name)
print(ax, sprintf('img/%s.png', file_name), '-dpng', '-r300')
end

function s = space(data)
s = linspace(0, 2 * pi, length(data.Data));
end
