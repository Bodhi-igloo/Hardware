%Plots the data used for modeling the Panasonic CGR18650CG 3.6V 2250mAh battery

function plot_CGR18650CG_data

%Load the battery data
load('CGR18650CG_data.mat');

figure(1)
h = plot(SOD_Vint, Vint, '-x');
grid on
xlabel('State of discharge (As)', 'Fontsize', 14)
ylabel('Internal cell voltage (V)', 'Fontsize', 14)
set(h, 'Linewidth', 2);

figure(2)
h = plot(Imeas, Irate, '-x');
grid on
xlabel('Discharge Current (A)', 'Fontsize', 14)
ylabel('I Rate Factor, k1', 'Fontsize', 14)
set(gca, 'FontSize', 14)
set(h, 'Linewidth', 2);

figure(3)
h = plot(Tmeas, Trate, '-x');
grid on
xlabel('Temperature (Tmeas)', 'Fontsize', 14)
ylabel('T Rate Factor', 'Fontsize', 14)
set(gca, 'FontSize', 14)
set(h, 'Linewidth', 2);

figure(4)
h = plot(Tmeas, deltaVint, '-x');
grid on
xlabel('Temperature (Tmeas)', 'Fontsize', 14)
ylabel('Change in internal voltage (V)', 'Fontsize', 14)
set(gca, 'FontSize', 14)
set(h, 'Linewidth', 2);

figure(5)
h = plot(SOD_Rint, Rint, '-x');
grid on
xlabel('State of discharge (As)', 'Fontsize', 14)
ylabel('Internal resistance (Ohm)', 'Fontsize', 14)
set(gca, 'FontSize', 14)
set(h, 'Linewidth', 2);
ylim([0.05 0.15]);