function [CorePoints,BorderPoints,LocalGapDensity] = DetectPionts(n,tau,W)

%% Local density
numLink = sum(W ~= 0,2);
weightLink = sum(W,2);
LocalDensity = (numLink.^2)./weightLink;

%% Local gap density
Link = W(:,:) > 0; 
LocalDensitiesTemp = repmat(LocalDensity',n,1);
Max = max((LocalDensitiesTemp.*Link),[],2);
LocalGapDensity = LocalDensity ./ Max;

%% Core points and border points
AllPoints = (1:n);
CorePointsID = LocalGapDensity >= tau;
CorePoints = AllPoints(CorePointsID)';
BorderPoints = setdiff(AllPoints,CorePoints);
