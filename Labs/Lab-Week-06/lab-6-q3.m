% Kathryn Atherton
% ABE 460
% Lab Week 6
% September 24, 2018
% Problem 5.3

clear all % clears all variables and functions from memory
close all % closes all open figure windows
clc % clears the command window

Kp = 5;
Ki = 5;
Kd = 2;

sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_a_time = output.Time;
output_a_data = output.Data;

Kd = 2.5;
sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_b_time = output.Time;
output_b_data = output.Data;

Kd = 3;
sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_c_time = output.Time;
output_c_data = output.Data;

Kd = 10;
sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_d_time = output.Time;
output_d_data = output.Data;

figure(1)
plot(setpoint.Time, setpoint.Data)
hold on
plot(output_a_time, output_a_data)
plot(output_b_time, output_b_data)
plot(output_c_time, output_c_data)
plot(output_d_time, output_d_data)
hold off
xlabel('Time (sec)')
legend('Setpoint','Kd = 0', 'Kd = 0.5', 'Kd = 1', 'Kd = 2')
title('Varying Kd (Kp = Ki = 5)')