% Kathryn Atherton
% ABE 460
% Lab Week 6
% September 24, 2018
% Problem 5.2

clear all % clears all variables and functions from memory
close all % closes all open figure windows
clc % clears the command window

Kp = 5;
Ki = 5;
Kd = 0;

sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_a_time = output.Time;
output_a_data = output.Data;

Ki = 10;
sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_b_time = output.Time;
output_b_data = output.Data;

Ki = 12.5;
sim('Lab_Week_6_model') % runs the model called Lab_Week_6_model
output_c_time = output.Time;
output_c_data = output.Data;

Ki = 15;
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
legend('Setpoint','Ki = 0', 'Ki = 1', 'Ki = 2.5', 'Ki = 5')
title('Varying Ki (Kp = 5, Kd = 0)')