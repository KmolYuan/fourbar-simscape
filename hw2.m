clc
close all
load('parameters.mat')
out = sim('fourbar');
1 * out.l2_w;