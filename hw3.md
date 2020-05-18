# Machine Dynamics - Assignment 3

Student ID: D08522005

Student Name: 張元

## Q1

**Determine L and R according to the required stroke.**

$$
\begin{cases}
l + r - (l - r) &= 76\text{mm}
\\
\frac{l}{r} &= 3.5
\end{cases}
$$

Obtains:

$$
\begin{cases}
r &= 38\text{mm}
\\
l &= 133\text{mm}
\end{cases}
$$

## Q2

**Consider the gas force only, determine the corresponding shaking force, the shaking moment based on the
point $O$, and the output torque $T_2$.**

$$
\begin{cases}
\omega_2 &= 120\pi \text{rad/s}
\\
\alpha_2 &= 0
\end{cases}
$$

$$
\begin{cases}
F &= F_g + F_i
\\
T &= T_g + T_i
\end{cases}
$$

$$
\begin{aligned}
F_{34} &+ F_g + F_{14} = 0
\\
F_{23} &= F_{34}
\\
T_{21} &= -x \times F_{41} = 0
\\
x &= r\cos\omega_2 t + l \sqrt{1 - (\frac{r}{l}\sin\omega_2 t)^2}
\end{aligned}
$$

Torque on pin 2:

$$
T_{21} = F_g \frac{r}{l} \sin{\omega_2 t}(1 + \frac{r^2}{2l^2}\sin^2\omega_2 t) r\cos{\omega_2 t} + F_g r\sin{\omega_2 t}
$$

Shaking force $F_S$:

$$
F_S = F_{12} + F_{14}
$$

## Q3

**Consider the inertial force only, determine the corresponding shaking force, the shaking moment based on
the point $O$, and the output torque $T_2$.**

Link3 masses:

+ Assuming that $m_3$ is composed by two masses, $m_a + m_b = m_3$.
+ $m_a$ and $m_b$ is distance $l_a$ and $l_b$ correspondly.

$$
\begin{cases}
m_a + m_b &= m_3
\\
m_a l_a &= m_b l_b
\\
m_a l_a^2 + m_b l_b^2 &= I_{G3}
\\
l_b &= l - r_{G3} = 0.64l
\\
l_a &= r_{G3} = 0.36l
\end{cases}
$$

Obtains:

$$
\begin{cases}
l_b &= 0.08512
\\
l_a &= 0.04788
\\
m_a &= 0.3140683789674688
\\
m_b &= 0.1859316210325312
\end{cases}
$$

Shaking force:

$$
F_S = F_i = \begin{cases}
F_x &= m_a r\omega_2^2\cos\omega_2 t + m_b r\omega_2^2(\cos\omega_2 t + \frac{r}{l}\cos 2\omega_2 t)
\\
F_y &= -m_a(-r\omega_2^2\sin\omega_2 t)
\end{cases}
$$

Torque on pin 2:

$$
T_{21} = \frac{1}{2}m_b r^2\omega_2^2(\frac{r}{2l}\sin\omega_2 t - \sin 2\omega_2 t - \frac{3r}{2l}\sin 3\omega_2 t)
$$
