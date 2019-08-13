function labels = AssignUnlabeledPoints(numSamp,LocalGapDensity,W,TempLabels,D)

unLabeledPoints = find(TempLabels == 0); % find the unlabeled points
LabeledPoints = find(TempLabels ~= 0);   % find the labeled points

% find the successive points of unlabeled points
S = SuccessivePoint(numSamp,W,LocalGapDensity,unLabeledPoints);

Chain = S(unLabeledPoints);
last = zeros(1,length(Chain));
while any(Chain ~= last)
    last = Chain;
    Chain = S(Chain);
end

% find the the representative point 
R_Uniq = unique(Chain);
R_Uniq_Lab = TempLabels(R_Uniq);
ID_S_Uniq = R_Uniq_Lab == 0;          
R_itself = R_Uniq(ID_S_Uniq);       

DR_T = D(R_itself,LabeledPoints);  % the nearest labeled points 
[~,ID_Nearest] = sort(DR_T,2);

% assign the unlabeled points to subclusters
LabelR_itself = [];
if size(ID_Nearest,2) ~= 0
    LabelR_itself = [R_itself',TempLabels(LabeledPoints(1,ID_Nearest(:,1)))'];
end
for i = 1:size(LabelR_itself,1)
    TempLabels(1,LabelR_itself(i,1)) = LabelR_itself(i,2);
end

% tidy up the label
LabelOne = [LabeledPoints',TempLabels(1,LabeledPoints)'];
LabelTwo = [unLabeledPoints',TempLabels(Chain)'];
LabelAll = [LabelOne;LabelTwo];

LabelAll = sortrows(LabelAll,1);
labels = LabelAll(:,2);
