function FigureComponents(X,W,CorePoints,BorderPoints)

m = size(X,2);
n = length(CorePoints);
if m > 2;
    [~, X, ~] = pca(X);
end

figure;
scatter(X(CorePoints,1), X(CorePoints,2), 40,'ro'); hold on
scatter(X(BorderPoints,1), X(BorderPoints,2),40,'b*');

for i = 1:n-1
    for j = 1+i:n
        if W(i,j)
            plot([X(CorePoints(i,1),1),X(CorePoints(j,1),1)], ...
                [X(CorePoints(i,1),2),X(CorePoints(j,1),2)], '-g', 'LineWidth',1);
        end
    end
end
title('The components');
hold off;
axis equal;
axis off;
