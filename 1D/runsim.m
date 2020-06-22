clc
close all;
clear;

% Hover
%z_des = 0;  % Desired position during hovering of the robot

% Step
z_des = 1;  % Desired position to achieve with step response

% Given trajectory generator
trajhandle = @(t) fixed_set_point(t, z_des);

% This is your controller
controlhandle = @controller;

% Run simulation with given trajectory generator and controller
[t, z] = height_control(trajhandle, controlhandle);

z_max = max(z);
time = min(t(abs(z-z_des*.9)<0.01));
