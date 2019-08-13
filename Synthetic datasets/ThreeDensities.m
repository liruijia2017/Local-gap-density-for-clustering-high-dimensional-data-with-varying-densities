%% X1
mu = [1,3.5]; 
sigma = [0.5,0.01;0.01,0.01]; 
X1 = mvnrnd(mu,sigma,300);

%% X2
[X2,~] = moonShape(900, 0.05);

%% X3
ang = rand(1,100)*2*pi;
r = sqrt(rand(1,100));
x = 0.9 + 0.6*r.*cos(ang);
y = 2 + 0.6*r.*sin(ang);
X3 = [x;y]';

%% X
X = [X1;X2;X3];

%%
scatter(X(:, 1), X(:, 2), 18, '+');
axis equal;
axis off;
axis image;