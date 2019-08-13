function FigurekNNGraph(X,W)

[n,m] = size(X);
if m>2
    [~, X, ~] = pca(X);
end

figure;

%% points
scatter(X(:,1), X(:,2), 20,'ro'); hold on

%% edges
for i = 1:n-1
    for j = 1+i:n
        if W(i,j)
            plot([X(i,1),X(j,1)], [X(i,2),X(j,2)], '-g', 'LineWidth',1);
        end
    end
end
title('kNN graph');
hold off;
axis equal;
axis off;

