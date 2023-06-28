function plot_3dof_transmissibility(m,k)

f = linspace(1,100,1000);
w = 2*pi*f;

F2_F1 = (...
    (1-w.^2*m(1)/k(1)).*(1-w.^2*m(2)/k(2)).*(1-w.^2*m(3)/k(3)) - ...
    w.^2*m(1)/k(2).*(1-w.^2*m(3)/k(3)) - ...
    w.^2*m(2)/k(3).*(1-w.^2*m(1)/k(1)) - ...
    w.^2*m(1)/k(3)).^(-1);

L = 20*log10(abs(F2_F1));

plot(f,L)
xlabel('Frequency, Hz')
ylabel('Force transmissibility, dB')
title('Force transmissibility for 3-DOF system')
grid on

end
