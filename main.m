cmn_fld = 'D:\MYDATA\Text Non_Text Data Printed Showmik\Train\';

savefile = ('D:\Project\Local Ternary Pattern\TRAIN.csv');
csv = fopen(savefile, 'w');


maxm = 36*2+1;
for i=1:maxm
st = strcat('attr_', num2str(i));
fprintf(csv, '%s,',st);
end
fprintf(csv, '\n');
thresold = 5;

for i = 1:2
    a = num2str(i);
    folder_in = strcat(cmn_fld,a,'\');
    listing = dir(strcat(folder_in,'*.','bmp'));
    file_names = {listing.name};
    num_pages = length(file_names);
    for j = 1:num_pages
        clc;
        fprintf("Image count = %d\n", j);
        img = imread(strcat(folder_in,file_names{j}));
        [~,~,w] = size(img);
        if w == 3
            img = rgb2gray(img);
        end
        
        img = imresize(img,[128 128]);
        % img = imrotate(img, 3);
        
        a = hist_LTP(img, thresold);
        
        class = strcat('a',num2str(i));
        
        l = length(a);
        for k=1:l
            fprintf(csv, '%f,', a(k));
        end
        
        fprintf(csv, '%s\n', class);
    end
end

fclose(csv);


    