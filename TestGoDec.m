%load hall1-200; 
%[L,S,G,RMSE,error]=Background(images,2,3.1e+5,0,[144,176]);

load shops; 
[L,S,G,RMSE,error]=Background(images,2,1.8e+6,0,[144,192]);
% 
%load escalator; 
%[L,S,G,RMSE,error]=Background(images,3,5.4e+5,0,[130,160]);
% 
 %load highway; 
 %[L,S,G,RMSE,error]=Background(images,2,0.65e+5,0,[240,320]);
