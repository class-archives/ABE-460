close all;
load('Team5.mat');

time = 1:length(Team5_redo);
time = time .* 0.1;
setpoint = ones(1,length(Team5_redo)) * 15; % cm

fillrate = ((22.31 - 6.47) / ((0.1 * 927) - (0.1 * 11))) * 643;
rise_time = 0.1 * 659; % s
p_o = (22.31 - 19.2) / 19.2 * 100; 
zeta = 0.52; % from chart
tr_wn = 2.5; % from chart
wn = tr_wn / rise_time;
fiveperc_set_time = 3 / (zeta * wn); 

figure
plot(time, Team5_redo)
hold on
plot(time, setpoint)
xlabel('Time [s]')
ylabel('Sensor height [cm]')
xlim([0,300])
ylim([min(Team5_redo), max(Team5_redo)])
title({'Team 5 Experimental Data: Stand 2','P = 0.35, I = 0, D = 10.5'})
legend('Experimental Data', 'Setpoint')

figure
plot(time, Team5_redo)
hold on
plot(time, setpoint)
plot(time, height)
xlabel('Time [s]')
ylabel('Height [cm]')
xlim([0,300])
ylim([min(Team5_redo), max(Team5_redo)])
title({'Team 5 Experimental Data: Stand 2','P = 0.35, I = 0, D = 10.5'})
legend('Experimental Data', 'Setpoint', 'Simulation Data')

figure
plot(time, Team5_redo)
hold on
plot(time, setpoint)
plot(time, height_new)
xlabel('Time [s]')
ylabel('Height [cm]')
xlim([0,300])
ylim([min(Team5_redo), max(Team5_redo)])
title({'Team 5 Experimental Data: Stand 2','P = 0.5, I = 0, D = 10','*Setpoint Height Adjusted to make model more accurate to data*'})
legend('Experimental Data', 'Setpoint', 'Simulation Data')