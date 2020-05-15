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
link2 &\Rightarrow \begin{cases}
F_{12x} + F_{32x} = m_2 a_{G2x}
\\
F_{12y} + F_{32y} = m_2 a_{G2y} - m_2 g
\\
R_{2x} F_{32y} - R_{2y} F_{32x} = [I_{G2} + m_2 r_{G2}^2]\alpha_2
\end{cases}
\\
link4 &\Rightarrow \begin{cases}
F_{34x} + F_g = m_4 a_{G4x}
\\
F_{34y} + F_{14} = m_4 a_{G4y} - m_4 g
\\
R_{4x} F_{34y} - R_{2y} F_{32x} = [I_{G3} + m_2 r_{G4}^2]\alpha_4
\end{cases}
\\
F_{34} &+ F_g + F_{14} = 0
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



Link3 inertia force & torque:

$$

$$
