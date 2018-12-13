figure(1)
plot(q.Time, q.Data, ':k')
hold on
plot(h.Time, h.Data, '-k')
hold off
title('Limited valve flow rate')
xlabel('Time (sec)')
ylabel('Flow (ft^3/s) & Height (ft)')
legend('Flow, q', 'Liquid level, h')
grid on