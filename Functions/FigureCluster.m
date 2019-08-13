function FigureCluster(X,labels)

[~,m] = size(X);
c = length(unique(labels));
Colors = hsv(c);

if m>2;
    [~, X, ~] = pca(X);
end

figure;
for i = 1:c
    scatter(X(labels == i,1), X(labels == i,2), 40, Colors(i,:),'o');
    hold on
end
scatter(X(labels == 0,1), X(labels == 0,2), 40, [0.5,0.5,0.5],'o');
title('Clustering result');
hold off;
axis equal;
axis off;
