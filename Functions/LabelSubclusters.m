function TempLabels = LabelSubclusters(numSamp,Components,CorePoints,c)

% the numbers of the vertices in the components
numVertexComponents = sum(Components ~= 0, 2);

% sort these numbers
[~, IDVertexComponents] = sort(numVertexComponents,'descend');

if length(IDVertexComponents) < c
    error('The number of components of the subgraph is less than %d', c);
end;

TempLabels = zeros(1,numSamp);
for i = 1:c
    Subcluster = nonzeros(Components(IDVertexComponents(i,1),:));
    TempLabels(CorePoints(Subcluster,1)) = i;
end