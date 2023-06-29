function animateSuperposition(amplitudeRatio, frequencyRatio, direction)
% animateSuperposition(amplitudeRatio, frequencyRatio, direction)
%
% Animates the superposition of two sinusoidal traveling waves
%
% amplitudeRatio is the ratio of the amplitudes of the two waves, A2/A1.
% frequencyRatio is the ratio of the frequencies of the two waves, f2/f1.
% direction is either 'same' to make the waves travel in the same
% direction, or 'diff' to make them travel in opposite directions.
%
% animateSuperposition(1.0, 0.9, 'same') generates an example of beats.
% animateSuperposition(1.0, 1.0, 'diff') generates an example of standing
% waves.

fs = 100;
T = 2;

dx = 0.01;
L = 3;

t = 0:1/fs:T;
x = 0:dx:L;
nTime = length(t);

c = 1;

A1 = 1;
A2 = amplitudeRatio;
f1 = 4;
f2 = f1*frequencyRatio;

k1 = 2*pi*f1/c;
k2 = 2*pi*f2/c;

M = (abs(A1)+abs(A2))*1.2;

y1 = A1*sin(2*pi*f1*t(1)-k1*x);

if strcmp(direction,'same')
    y2 = A2*sin(2*pi*f2*t(1)-k2*x);
elseif strcmp(direction,'diff')
    y2 = A2*sin(2*pi*f2*t(1)+k2*x);
end

figure
%set(gcf,'units','inches','position',[2 2 8 6])
subplot(2,1,1)
h1 = plot(x,y1,'b','linewidth',1.5);
hold on
h2 = plot(x,y2,'r','linewidth',1.5);
xlabel('Position')
ylabel('Pressure')
xlim([0 L])
ylim([-M M])
grid on
set(gca,'xticklabel','')

subplot(2,1,2)
hTotal = plot(x,y1+y2,'k','linewidth',1.5);
xlabel('Position')
ylabel('Pressure')
xlim([0 L])
ylim([-M M])
grid on
set(gca,'xticklabel','')

for iTime = 1:nTime
    y1 = A1*sin(2*pi*f1*t(iTime)-k1*x);
    
    if strcmp(direction,'same')
        y2 = A2*sin(2*pi*f2*t(iTime)-k2*x);
    elseif strcmp(direction,'diff')
        y2 = A2*sin(2*pi*f2*t(iTime)+k2*x);
    end
    
    set(h1,'YData', y1);
    set(h2,'YData', y2);
    set(hTotal,'YData', y1+y2);
    
    drawnow
    pause(1/30)
end

end