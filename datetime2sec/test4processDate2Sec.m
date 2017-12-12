% 20171212 test file
%% Basic Setting
clc; clear;
% add function path :: datetime2sec, loadPOS2secFormat, writePOSfile
addpath('/Users/May/Documents/MATLAB/personal_project/chichien/year2secFunc');

%% process data
filename = '960700.15.pos';
dataMat = loadPOS2secFormat(filename);

%% save data
writePOSfile([filename,'_modified'], dataMat);
% coded by Chan, Chun-Hsiang @ Taipei, Taiwan
