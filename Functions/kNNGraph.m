function W = kNNGraph(D,n,k)

[~,D_Sort_Id] = sort(D,2);

W = zeros(n);
for i = 1:n
    id = D_Sort_Id(i,2:k+1);
    W(i,id) = D(i,id);
    W(id,i) = W(i,id);
end
