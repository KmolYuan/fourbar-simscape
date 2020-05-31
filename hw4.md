# Machine Dynamics - Assignment 4

Student ID: D08522005

Student Name: 張元

## Q1

**Simulate the dynamics of the engine during $t = 0$ to $10$ s.**

$$
\begin{cases}
\theta_2 &= 0
\\
\omega &= 20.94 \text{rad}/\text{s}
\\
T_2 &= \omega^2 \times 10^{-4} = 0.0438 \text{N}\cdot\text{m}
\\
r &= 38\text{mm}
\\
l &= 133\text{mm}
\\
m_2 &= 5\text{kg}
\\
m_3 &= 0.5\text{kg}
\\
m_4 &= 0.3\text{kg}
\\
I_{G2} &= 0.05\text{kg}\cdot\text{m}^2
\\
I_{G3} &= 0.002\text{kg}\cdot\text{m}^2
\end{cases}
$$

The Lagrange equation:

$$
\frac{d}{dt}(\frac{\partial L}{\partial\dot\theta_2}) - \frac{\partial L}{\partial\theta_2} = T_2 + W_G
$$

Total kinetic and potential energy:

$$
\begin{cases}
T &= \frac{1}{2}(I_{G2}\dot\theta_2^2 + I_{G3}\dot\theta_3^2 + m_4 v_{G4}^2)
\\
V &= g\sin\theta_2[m_2 r_{G2} + m_3 (L + r_{G3})]
\\
L &= T - V
\end{cases}
$$

Applying $\frac{\partial}{\partial\dot\theta_2}$ to $L$:

$$
\begin{aligned}
\frac{\partial L}{\partial\dot\theta_2} =& I_{G2} + I_{G3}\frac{\partial\theta_3^2}{\partial\theta_2} + m_4\frac{\partial v_{G4}^2}{\partial\dot\theta_2}
\\
&- g\dot\theta_2\cos\theta_2[m_2 r_{G2} + m_3 (L + r_{G3})]
\end{aligned}
$$

Applying $\frac{d}{dt}$ to $\frac{\partial L}{\partial\dot\theta_2}$:

$$
\begin{aligned}
\frac{d}{dt}(\frac{\partial L}{\partial\dot\theta_2}) =& I_{G2} + 2I_{G3}\frac{\partial\dot\theta_3}{\partial\theta_2} + 2m_4\frac{\partial a_{G4}}{\partial\dot\theta_2}
\\
&- g\ddot\theta_2\cos\dot\theta_2[m_2 r_{G2} + m_3 (L + r_{G3})]
\end{aligned}
$$

Applying $\frac{\partial}{\partial\theta_2}$ to $L$:

$$
\begin{aligned}
\frac{\partial L}{\partial\theta_2} =& I_{G2}\frac{\dot\theta_2}{\partial\theta_2} + I_{G3} \frac{\dot\theta_2}{\partial\theta_2} + m_4\frac{\partial v}{\partial\theta_2}
\\
&- g\cos\theta_2[m_2 r_{G2} + m_3(L + r_{G_3})]
\end{aligned}
$$

The Lagrange equation of the gas force:

$$
\begin{cases}
\delta W_G &= F_G\delta r_G
\\
\delta r_G &= \delta\theta_2 \cdot \sin\theta_2(-R - \frac{R^2\cos\theta_2}{L\sqrt{1 - (\frac{R}{L})^2\sin^2\theta_2}})
\end{cases}
$$

It can be expressed as:

$$
W_G = F\sin\theta_2(-R - \frac{R^2\cos\theta_2}{L\sqrt{1 - (\frac{R}{L})^2\sin^2\theta_2}})
$$

Vector loop:

$$
\begin{cases}
l_2\cos\theta_2 + l_3\cos\theta_3 &= x
\\
l_2\sin\theta_2 + l_3\sin\theta_3 &= 0
\end{cases}
$$

Obtain $\theta_3$:

$$
\theta_3 = \sin^{-1}(\frac{R}{L}\sin\theta_2)
$$

Applying $\frac{d}{dt}$:

$$
\begin{cases}
l_2\dot\theta_2\cos\theta_2 &= -l_3\dot\theta_3\cos\theta_3
\\
l_2\dot\theta_2\sin\theta_2 &= -l_3\dot\theta_3\sin\theta_3
\end{cases}
$$

Applying $\frac{\partial}{\partial\dot\theta_2}$:

$$
\begin{cases}
l_2\cos\theta_2 &= -l_3\frac{\partial\dot\theta_3}{\partial\dot\theta_2}\cos\theta_3
\\
l_2\sin\theta_2 &= -l_3\frac{\partial\dot\theta_3}{\partial\dot\theta_2}\sin\theta_3
\end{cases}
$$

Obtain $\frac{\partial\dot\theta_3}{\partial\dot\theta_2}$:

$$
\frac{\partial\dot\theta_3}{\partial\dot\theta_2} = -\frac{l_2\sin\theta_2}{l_3\cos\theta_3}
$$

## Q2

**In the simulation, find the required time to speed up from $200$ to $3600$ rpm.**

## Q3

**According to the result in Assignment 3 to design a flywheel for the crank to achieve $k = 0.05$. Repeat 1
and 2 to find the influence of the flywheel.**

