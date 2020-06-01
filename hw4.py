# -*- coding: utf-8 -*-

from math import degrees, radians
from numpy import array, arange, linspace, concatenate, zeros, pi, sin, cos, sqrt
from scipy.interpolate import interp1d
import matplotlib.pyplot as plt

l2 = 38e-3
l3 = 133e-3
r2 = 0.3 * l2
r3 = 0.36 * l3
theta2 = 0
dtheta2 = 200 * 2 * pi / 60
t2 = dtheta2**2*1e-4
m2 = 5
m3 = 0.5
m4 = 0.3
i2 = 0.05
i3 = 0.002
g = 9.8
f = concatenate([linspace(13e3, 15e3, 10), linspace(15e3, 0, 160 - 10), zeros(650 - 160), linspace(0, 2e3, 710 - 650), linspace(2e3, 13e3, 720 - 710)])
f = interp1d(arange(len(f)), f)

eps = 1e-8
sep = 0.01
p = []
for t in arange(0, 10, sep):
    theta2 %= radians(720)
    wt = dtheta2 * t
    dtheta3 = l2**2 * cos(wt) / (l3 * sqrt(1 - (l2 / l3)**2 * sin(wt)**2) + eps)
    ddtheta2 = (-i3 + sin(wt) * (l2 * m4 * (dtheta2 - dtheta3 * dtheta2) - f(degrees(theta2) % 720) * (-l2 - dtheta3)) + g * cos(wt) * (m2 * r2 + m3 * (l3 + r3)) - t2) / (g * cos(wt) * (m2 * r2 + m3 * (l3 + r3)) + eps) - sin(dtheta2) / (cos(wt) + eps) * dtheta2
    theta2 += dtheta2
    dtheta2 += ddtheta2
    p.append((t, dtheta2))

p = array(p)
plt.plot(p[:, 0], p[:, 1])
plt.xlabel("Time (s)")
plt.ylabel("rad")
plt.title(r"$\theta_2$")
plt.tight_layout(pad=0.5)
plt.show()
