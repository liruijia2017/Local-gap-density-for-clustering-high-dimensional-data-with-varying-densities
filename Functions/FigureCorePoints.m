function FigureCorePoints(X,CorePoints,BorderPoints)

m = size(X,2);
if m>2;
    [~, X, ~] = pca(X);
end

figure
scatter(X(CorePoints,1), X(CorePoints,2), 40,'ro'); hold on
scatter(X(BorderPoints,1), X(BorderPoints,2), 40,'b*');
title('Core points and border points');
hold off;
axis equal;
axis off;