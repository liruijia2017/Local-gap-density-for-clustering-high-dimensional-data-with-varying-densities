function c = numClusters(Components,BorderPoints)

% the numbers of the vertices in the components
numVertexComponents = sum(Components ~= 0, 2);

% sort these numbers
[numVertexComponents, ~] = sort(numVertexComponents,'descend');
numComponents = length(numVertexComponents);
MAXnumVertex = max(numVertexComponents);

% choose the number of the clusters
figure
scatter((1:numComponents+length(BorderPoints)),[numVertexComponents;ones(1,length(BorderPoints))'],40,'r','filled')
set(gca,'xscale','log')
box on;
axis([0 numComponents+length(BorderPoints) 0 MAXnumVertex+2])
% scatter((1:numComponents),numVertexComponents,80,'r','filled')
% axis([0 numComponents 0 MAXnumVertex+2])

ylabel('Number of the vertexes in the component',...
    'FontName','Times New Roman','FontSize',14)
xlabel('i',...
    'FontName','Times New Roman','FontSize',14)
c=input('Please enter the number of clusters: c = ');
