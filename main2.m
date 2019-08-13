%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         
% The code for testing the algorithm LGD on synthetic datasets.
% Written by Ruijia Li (ruijia2017@163.com), Lab of GRC & AI.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; close all; clc; 
addpath(genpath(pwd));              % set path

%% test 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load ThreeDensities;                % load dataset
k = 35; tau = 0.57;                 % set the parameters
c = 0;                              % set the number of clusters
Figure = 1;                         % show the figures?  0 or 1

%% test 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load crossClusters;          
% k = 15; tau = 0.27;
% c = 0;
% Figure = 1;

%% run LGD %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% If the number of clusters is not entered or set c = 0,
% we need to enter it during the clustering process.
labels = LGD(X,k,tau,Figure,c);

