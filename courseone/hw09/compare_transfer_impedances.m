function compare_transfer_impedances(c)
m1 = 2.5;
m2 = 5;
k1 = 2000;
k2 = 5000;
k3 = 1000;

figure
for iCase = 1:length(c)
    plotTransferImpedance(m1, m2, c(iCase), c(iCase), c(iCase), k1, k2, k3)
    hold on
    legendEntries{iCase} = sprintf('%0.1f N\\cdots/m',c(iCase));
end
legend(legendEntries)

end

function plotTransferImpedance(m1, m2, c1, c2, c3, k1, k2, k3)

f = 0.1:0.1:1e3;
w = 2*pi*f;

Z1 = c1+c3+1i*(w*m1-(k1+k3)./w); % Blocked impedances
Z2 = c2+c3+1i*(w*m2-(k2+k3)./w);

M = c3+1i*k3./w;

Z12 = (Z1.*Z2-M.^2)./M; % Transfer impedance

loglog(f,abs(Z12))
xlabel('Frequency, Hz')
ylabel('Transfer impedance magnitude, N\cdots/m')
grid on

end