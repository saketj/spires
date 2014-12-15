function [] = savefiles(x)
N = length(x);
for i = 1:N
    inputFile = x{i};
    [pathstr, name, ext, versn] = fileparts(inputFile);
    eyeimage = imread(inputFile);
    imwrite(eyeimage,strcat(name,ext),'bmp');
end
end