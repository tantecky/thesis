close all;
clear all;
clc;

global pp1;
global pp2;
global pp3;

function y = rov1(x)
	global pp1;
	y = ppval(pp1, x) - 0.8;
end

function y = rov2(x)
	global pp2;
	y = ppval(pp2, x) - 0.8;
end

function y = rov3(x)
	global pp3;
	y = ppval(pp3, x) - 0.8;
end

function y = rov32(x)
	global pp3;
	y = ppval(pp3, x) - 0.2;
end

[t,x1,x2,x3] = textread('Vysledky.csv');
t(1) = [];
x1(1) = [];
x2(1) = [];
x3(1) = [];

pp1 = spline(t,x1);
pp2 = spline(t,x2);
pp3 = spline(t,x3);

t1 = fzero(@rov1, 3)
t2 = fzero(@rov2, 3)
t3 = fzero(@rov3, 3)
t3 = fzero(@rov32, 3)

