function unique_val = unique_vals(void);
val = zeros(1,256);
for i=0:255
    val(i+1)=rotate(i);
end

unique_val = unique(val);

