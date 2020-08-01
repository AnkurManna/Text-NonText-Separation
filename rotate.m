function val = rotate(x)
bin_val = dec2bin(x,8);

for i=1:7
x=min(x,bin2dec(circshift(bin_val,i)));
end

val=x;