function plot_frequency_response(m, c, k, type)
% plot_frequency_response plots either the impedance or admittance of a
% damped oscillator.
%
% Multiple cases can be plotted simultaneously by making the inputs
% vectors.
%
% m is a vector of masses, in kg
% c is a vector of mechanical resistances, in N*s/m
% k is a vector of stiffnesses, in N/m
%
% type is either 'admittance' or 'impedance'
%
% The m, c, and k vectors must all be the same length.

nCases = length(m);
assert(length(c) == nCases,'m, c, and k vectors must be the same length')
assert(length(k) == nCases,'m, c, and k vectors must be the same length')

w0 = sqrt(k./m);

w = logspace(log10(min(w0)/100),log10(100*max(w0)),10000);

figure

for iCase = 1:nCases
    legendEntries{iCase} = sprintf('m = %0.0f kg, c = %0.0f N*s/m, k = %0.0f N/m',m(iCase),c(iCase),k(iCase));    
    
    switch type
        case 'impedance'
            H = 1i*w*m(iCase)+c(iCase)-1i*k(iCase)./w; % Mechanical impedance
            magnitudeLabel = 'Impedance, N\cdots/m';
            titleText = 'Impedance';
        case 'admittance'
            H = 1./(-w.^2*m(iCase)+1i*w*c(iCase)+k(iCase)); % Mechanical admittance
            magnitudeLabel = 'Admittance, m/N';
            titleText = 'Admittance';
    end

    subplot(2,1,1)
    loglog(w/(2*pi), abs(H),'linewidth',2)
    hold on
    
    subplot(2,1,2)
    semilogx(w/(2*pi), angle(H)*180/pi, 'linewidth',2)
    hold on
end

subplot(2,1,1)
xlabel('Frequency, Hz')
ylabel(magnitudeLabel)
title(titleText)
grid on
set(gca,'fontsize',14)
legend(legendEntries)

subplot(2,1,2)
set(gca,'ytick',-180:90:180,'ylim',[-200 200])
grid on
xlabel('Frequency, Hz')
ylabel('Phase, \circ')
set(gca,'fontsize',14)
    
