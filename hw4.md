# Machine Dynamics - Assignment 4

Student ID: D08522005

Student Name: 張元

## Q1

**Simulate the dynamics of the engine during $t = 0$ to $10$ s.**

$$
\begin{cases}
\theta_2 &= 0
\\
\omega &= \dot\theta_2 = 20.94 \text{rad}/\text{s}
\\
T_2 &= \omega^2 \times 10^{-4} = 0.0438 \text{N}\cdot\text{m}
\\
R &= l_2 = 38\text{mm}
\\
L &= l_3 = 133\text{mm}
\\
r_{G2} &= 0.3l_2 = 11.4\text{mm}
\\
r_{G3} &= 0.36l_3 = 47.88\text{mm}
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
T &= \frac{1}{2}(I_{G2}\dot\theta_2^2 + I_{G3}\dot\theta_3^2 + m_4\dot x^2)
\\
V &= g\sin\theta_2[m_2 r_{G2} + m_3 (L + r_{G3})]
\\
L &= T - V
\end{cases}
$$

Applying $\frac{\partial}{\partial\dot\theta_2}$ to $L$:

$$
\begin{aligned}
\frac{\partial L}{\partial\dot\theta_2} =& I_{G2} + I_{G3}\frac{\partial\theta_3}{\partial\dot\theta_2} + m_4\frac{\partial\dot x}{\partial\dot\theta_2}
\\
&- g\dot\theta_2\cos\theta_2[m_2 r_{G2} + m_3 (L + r_{G3})]
\end{aligned}
$$

Applying $\frac{d}{dt}$ to $\frac{\partial L}{\partial\dot\theta_2}$:

$$
\begin{aligned}
\frac{d}{dt}(\frac{\partial L}{\partial\dot\theta_2}) =& I_{G3}\frac{\partial\dot\theta_3}{\partial\dot\theta_2} + m_4\frac{\partial\ddot x}{\partial\dot\theta_2}
\\
&- (g\ddot\theta_2\cos\theta_2 + g\dot\theta_2\sin\dot\theta_2)[m_2 r_{G2} + m_3 (L + r_{G3})]
\end{aligned}
$$

Applying $\frac{\partial}{\partial\theta_2}$ to $L$:

$$
\begin{aligned}
\frac{\partial L}{\partial\theta_2} =& -g\cos\theta_2[m_2 r_{G2} + m_3(L + r_{G_3})]
\end{aligned}
$$

The gas force:

$$
W_G = F\sin\theta_2(-R - \frac{\dot\theta_3}{\dot\theta_2})
$$

The result is:

$$
\begin{aligned}
\frac{d}{dt}(\frac{\partial L}{\partial\dot\theta_2}) - \frac{\partial L}{\partial\theta_2} &=
I_{G3}\frac{\partial\dot\theta_3}{\partial\dot\theta_2} + m_4\frac{\partial\ddot x}{\partial\dot\theta_2}
\\
&- (g\ddot\theta_2\cos\theta_2 + g\dot\theta_2\sin\dot\theta_2)[m_2 r_{G2} + m_3 (l_3 + r_{G3})]
\\
&+ g\cos\theta_2[m_2 r_{G2} + m_3(l_3 + r_{G_3})]
\\
&= T_2 + F\sin\theta_2(-l_2 - \frac{l_2^2\cos\theta_2}{l_3\sqrt{1 - (\frac{l_2}{l_3})^2\sin^2\theta_2}})
\end{aligned}
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
\begin{cases}
\theta_3 = \sin^{-1}(\frac{l_2}{l_3}\sin\theta_2)
\\
\dot\theta_3 = \frac{l_2^2\cos\theta_2}{l_3\sqrt{1 - (\frac{l_2}{l_3})^2\sin^2\theta_2}}\dot\theta_2
\end{cases}
$$

Applying $\frac{d}{dt}$:

$$
\begin{cases}
l_2\dot\theta_2\cos\theta_2 &= \dot x - l_3\dot\theta_3\cos\theta_3
\\
l_2\dot\theta_2\sin\theta_2 &= -l_3\dot\theta_3\sin\theta_3
\end{cases}
$$

Applying $\frac{\partial}{\partial\theta_2}$ to $\frac{d}{dt}$:

$$
\begin{cases}
l_2\frac{\partial\dot\theta_2}{\partial\theta_2}\sin\theta_2 &= \frac{\partial\dot x}{\partial\theta_2} - l_3\frac{\partial\dot\theta_3}{\partial\theta_2}\cos\theta_3
\\
l_2\frac{\partial\dot\theta_2}{\partial\theta_2}\cos\theta_2 &= -l_3\frac{\partial\dot\theta_3}{\partial\theta_2}\sin\theta_3
\end{cases}
$$

Applying $\frac{\partial}{\partial\dot\theta_2}$ to $\frac{d}{dt}$:

$$
\begin{cases}
l_2\cos\theta_2 &= \frac{\partial\dot x}{\partial\dot\theta_2} - l_3\frac{\partial\dot\theta_3}{\partial\dot\theta_2}\cos\theta_3
\\
l_2\sin\theta_2 &= -l_3\frac{\partial\dot\theta_3}{\partial\dot\theta_2}\sin\theta_3
\end{cases}
$$

Obtain:

$$
\begin{cases}
\frac{\partial\dot\theta_3}{\partial\dot\theta_2} &= \frac{\partial\theta_3}{\partial\theta_2} = -\frac{l_2\sin\theta_2}{l_3\sin\theta_3} = -1
\\
\frac{\partial\dot x}{\partial\dot\theta_2} &= l_2\cos\theta_2 - l_3\cos\theta_3
\\
\frac{\partial\ddot x}{\partial\dot\theta_2} &= l_2\dot\theta_2\sin\theta_2 - l_3\dot\theta_3\sin\theta_3 = l_2\sin\theta_2(\dot\theta_2 - \dot\theta_3)
\end{cases}
$$

Substitute in to Lagrange equation:

$$
\begin{aligned}
\frac{d}{dt}(\frac{\partial L}{\partial\dot\theta_2}) - \frac{\partial L}{\partial\theta_2} &=
-I_{G3} + l_2 m_4\sin\theta_2(\dot\theta_2 - \frac{l_2^2\cos\theta_2}{l_3\sqrt{1 - (\frac{l_2}{l_3})^2\sin^2\theta_2}}\dot\theta_2)
\\
&- (g\ddot\theta_2\cos\theta_2 + g\dot\theta_2\sin\dot\theta_2)[m_2 r_{G2} + m_3 (l_3 + r_{G3})]
\\
&+ g\cos\theta_2[m_2 r_{G2} + m_3(l_3 + r_{G_3})]
\\
&= T_2 + F\sin\theta_2(-l_2 - \frac{l_2^2\cos\theta_2}{l_3\sqrt{1 - (\frac{l_2}{l_3})^2\sin^2\theta_2}})
\end{aligned}
$$

Among them, the $\ddot\theta_2$ ($\alpha_2$) is unknown.
Change the items and obtain:

$$
\begin{aligned}
&\ddot\theta_2 =
\\
&\frac{-I_{G3} + \sin\theta_2[l_2 m_4(\dot\theta_2 - \dot\theta_3) - F(-l_2 - \frac{\dot\theta_3}{\dot\theta_2})] + g\cos\theta_2[m_2 r_{G2} + m_3(l_3 + r_{G_3})] - T_2}{g\cos\theta_2[m_2 r_{G2} + m_3 (l_3 + r_{G3})]}
\\
&- \frac{\sin\dot\theta_2}{\cos\theta_2}\dot\theta_2
\end{aligned}
$$

## Q2

**In the simulation, find the required time to speed up from $200$ to $3600$ rpm.**

## Q3

**According to the result in Assignment 3 to design a flywheel for the crank to achieve $k = 0.05$. Repeat 1
and 2 to find the influence of the flywheel.**

