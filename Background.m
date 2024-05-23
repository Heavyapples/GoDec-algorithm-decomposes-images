function [L,S,G,RMSE,error]=Background(X,rank,card,power,isize)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   Background Modeling by GoDec
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%isize: image size of each frame, for example, 1024x768
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Tianyi Zhou, 2011, All rights reserved.

[L,S,RMSE,error]=GoDec(X,rank,card,power);
G=X-L-S;

for i=1:min([200,size(X,2)])
        img_X = reshape(X(:,i),isize);
        img_L = reshape(L(:,i),isize);
        img_S = reshape(S(:,i),isize);
        img_G = reshape(G(:,i),isize);
        
        save_image(i, 'X', img_X);
        save_image(i, 'L', img_L);
        save_image(i, 'S', img_S);
        save_image(i, 'G', img_G);
        
        pause(0.1);
end

    function save_image(index, prefix, img)
    if index < 10
        filename = sprintf('%s%s%s%s', prefix, '00', num2str(index), '.jpg');
    elseif index < 100
        filename = sprintf('%s%s%s%s', prefix, '0', num2str(index), '.jpg');
    else
        filename = sprintf('%s%s%s', prefix, num2str(index), '.jpg');
    end
    imwrite(img, filename, 'jpg');
end
end



