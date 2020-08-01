function [final_feature] = filter_feature(set,array)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[~,c] = size(set);
len = length(array);

if (c ~= len)
    fprintf("The feature dimension in both case does not match. Please check properly. \n");
    return;
end

final_feature = [];

for i = 1:len
    if(array(i) ~= 0)
        final_feature = [final_feature set(:,i)];
    end
end

