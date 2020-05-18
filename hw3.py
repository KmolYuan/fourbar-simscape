# -*- coding: utf-8 -*-

from numpy import linspace, concatenate, zeros, pi, sin, cos
import matplotlib.pyplot as plt

r = 38e-3
l = 133e-3
w = 120 * pi

t = linspace(0, 1/30, 720)
fg = concatenate([linspace(13e3, 15e3, 10), linspace(15e3, 0, 160 - 10), zeros(650 - 160), linspace(0, 2e3, 710 - 650), linspace(2e3, 13e3, 720 - 710)])

tg21 = fg * r / l * sin(w * t) * (1 + r**2 / (2 * l**2) * sin(w * t)**2) * r * cos(w * t) + fg * r * sin(w * t)

m_a = 0.3140683789674688
m_b = 0.1859316210325312


ti21 = 0.5 * m_b * r**2 * w**2 * (r/(2*l) * sin(w * t) - sin(2 * w * t) - 3 * r / (2 * l) * sin(3 * w * t))

fix = m_a * r * w**2 * cos(w * t) + m_b * r * w**2 * (cos(w * t) + r / l * cos(2 * w * t))
fiy = -m_a * (-r * w**2 * sin(w * t))

plt.plot(t, fix, label='$F_x$')
plt.plot(t, fiy, label='$F_y$')
plt.xlabel("Time (s)")
plt.ylabel("$N$")
plt.legend()
plt.tight_layout(pad=0.5)
plt.show()
