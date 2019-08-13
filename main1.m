%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         
% The code for testing the algorithm LGD on real-world datasets.
% Please download these eight datasets at https://github.com/grcai.
% Written by Ruijia Li (ruijia2017@163.com), Lab of GRC & AI.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; close all; clc; 
addpath(genpath(pwd));              % set path
tic                                 % record time

%% test 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load breast;                        % load dataset
X = Data_Normalized(X,0,1);         % normalize dataset
k = 4; tau = 0.5;                   % set the parameters     
c = 2;                              % set the number of clusters
Figure = 0;                         % show the figures?  0 or 1

%% test 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load USPS;                     
% k = 20; tau = 0.56; 
% c = 10;
% Figure = 0;

%% test 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load ecoli;                
% k = 15; tau = 0.62; 
% c = 8;     
% Figure = 0;

%% test 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load COIl_20;                  
% k = 2; tau = 0.5;          
% c = 20;                    
% Figure = 0;                 

%% test 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load Jaffe; % 
% X = double(X);             
% X = Data_NormalizedL2(X); 
% k = 10; tau = 0.60; 
% c = 10;   
% Figure = 0;

%% test 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load gisette;             
% k = 6; tau = 0.52; 
% c = 2;  
% Figure = 0;

%% test 7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load arcene;                
% k = 6; tau = 0.56; 
% c = 2;   
% Figure = 0;

%% test 8 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load TDT2;             
% X = Data_NormalizedL2(X); 
% k = 20; tau = 0.50; 
% c = 30;   
% Figure = 0;

%% run LGD %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% If the number of clusters is not entered or set c = 0,
% we need to enter it during the clustering process.
labels = LGD(X,k,tau,Figure,c);
[ACC, ~, ~] = ClusteringMeasure(Y, labels);
disp(['ACC = ',num2str(ACC)]);
toc

