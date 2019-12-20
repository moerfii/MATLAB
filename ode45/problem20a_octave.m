%%%%% xdot + 7*x = 5*cos(2*t)
%%%%% x(0) = 0

function problem20a_octave()

close all %%closes all previous figures

%%%Simulates the first order equation
tout = 0:0.01:10;
xout = lsode(@Derivatives,0,tout);

%%%This plots it
plot(tout,xout,'b-','LineWidth',2)
grid on
xlabel('Time (sec)')
ylabel(' X(t) ')
title(' Problem 20a ')

%%%Plot the solution obtained by hand
hold on
x_hand = -35/53*exp(-7*tout) + 10/53*sin(2*tout) + 35/53*cos(2*tout);
plot(tout,x_hand,'r--','LineWidth',2)
legend('Numerical','Hand Calculation')


function xdot = Derivatives(x,t)

xdot = 5*cos(2*t) - 7*x;
