% Kathryn Atherton
% ABE 460
% Lab Week 6
% September 24, 2018
% Problem 5.1

clear all % clears all variables and functions from memory
close all % closes all open figure windows
clc % clears the command window

Kp = 10;
Ki = 0;
Kd = 0;

sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_a_time = output.Time;
output_a_data = output.Data;

Kp = 20;
sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_b_time = output.Time;
output_b_data = output.Data;

Kp = 40;
sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_c_time = output.Time;
output_c_data = output.Data;


figure(1)
plot(setpoint.Time, setpoint.Data)
hold on
plot(output_a_time, output_a_data)
plot(output_b_time, output_b_data)
plot(output_c_time, output_c_data)
hold off
xlabel('Time (sec)')
legend('Setpoint','Kp = 1', 'Kp = 5', 'Kp = 10')
title('Varying Kp (Ki = Kd = 0)')