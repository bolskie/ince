function plot_damped_oscillator(m,c,k)
% plot_damped_oscillator plots the free response of a damped oscillator
% released from rest at a displacement of 1 cm from t = 0 to 10 seconds.
% Multiple cases can be plotted simultaneously by making the inputs
% vectors.
%
% m is a vector of masses, in kg
% c is a vector of mechanical resistances, in N*s/m
% k is a vector of stiffnesses, in N/m
%
% The m, c, and k vectors must all be the same length.

nCases = length(m);
assert(length(c) == nCases,'m, c, and k vectors must be the same length')
assert(length(k) == nCases,'m, c, and k vectors must be the same length')

A = 1;
phi = 0;
T = 10;
stepsPerCycle = 50;

figure

for iCase = 1:nCases
    w0 = sqrt(k(iCase)/m(iCase));
    zeta = c(iCase)/(2*sqrt(k(iCase)*m(iCase)));
    
    f0 = w0/(2*pi);
    dt = 1/(stepsPerCycle*f0);
    
    
    t = 0:dt:T;
    
    if zeta == 0
        x = A*cos(w0*t+phi);
        dampingRegime = 'undamped';
    elseif zeta < 1
        x = A*exp(-w0*zeta*t).*cos(w0*t+phi);
        dampingRegime = 'underdamped';
    elseif zeta == 1
        x = A*(exp(-w0*t)+w0*t.*exp(-w0*t));
        dampingRegime = 'critically-damped';
    else
        gamma1 = -w0*(zeta+sqrt(zeta^2-1));
        gamma2 = -w0*(zeta-sqrt(zeta^2-1));
        A1 = A/(1-gamma1/gamma2);
        A2 = A-A1;
        x = A1*exp(gamma1*t)+A2*exp(gamma2*t);
        dampingRegime = 'overdamped';
    end
    legendEntries{iCase} = sprintf('m = %0.0f kg, c = %0.0f N*s/m, k = %0.0f N/m, (%s)',m(iCase),c(iCase),k(iCase),dampingRegime);
    plot(t,x,'linewidth',2)
    hold on
end
legend(legendEntries)
xlabel('Time, s')
ylabel('Displacement, cm')
ylim([-1 1])
grid on