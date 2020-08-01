function LTP = LTPN_rotation_cal(mat,th)
%bin2dec
bin_val_l = "";

pixel_order = zeros(1,8);
k=1;
for i = 1:3
    pixel_order(1,k) = mat(1,i);
    k = k + 1;
end

pixel_order(1,4) = mat(2,3);
k=5;
for i=3:-1:1
    pixel_order(1,k) = mat(3,i);
    k=k+1;
end

pixel_order(1,8) = mat(2,1);

for i = 1:8
    
    
    if pixel_order(1,i)+th<mat(2,2)
        bin_val_l=bin_val_l+"1";
    else
        bin_val_l=bin_val_l+"0";

    end
end
%bin_val_l
x=bin2dec(bin_val_l);

str=dec2bin(x,8);

for i=1:8
x=min(x,bin2dec(circshift(str,i)));
end

LTP=x;


    


