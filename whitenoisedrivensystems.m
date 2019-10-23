N = 1000;
h = 0.1;
t = 0:h:(N-1)*h;
sigma = 1;
mu = 0;

x = sigma * randn(N, 1) + mu;

figure(1)
plot(t, x);

sys = tf([1 0], [1 1 2]);
y = lsim(sys, x, t);

figure(2)
plot(t, y);