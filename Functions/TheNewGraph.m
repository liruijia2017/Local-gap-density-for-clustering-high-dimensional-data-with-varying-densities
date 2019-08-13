function W_new = TheNewGraph(W,BorderPoints,CorePoints)

W_new = W;

%% delete the cross-cluster edges
W(BorderPoints,:) = 0;
W(:,BorderPoints) = 0;

for i = 1:length(CorePoints)
    
    % find the core points which connect to some border points
    in = CorePoints(i,1);
    Cut_ID = W_new(in,:) - W(in,:);
    Cut_weight = min(nonzeros(Cut_ID));
    
    if Cut_weight > 0
        id = W_new(in,:) >= Cut_weight;
        W_new(in,id) = 0; % W_new(id,in) = 0;
    end
end
W_new = W_new + W_new';

% remove the border points to fast count the components
W_new(BorderPoints,:) = [];
W_new(:,BorderPoints) = [];
