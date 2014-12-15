function [indexFileList queryFileList] = separateFiles(path)
allFileList = getAllFiles(path);
N = length(allFileList);
validInputFileList = {};
for i = 1:N
    inputFile = allFileList{i};
    [pathstr, name, ext, versn] = fileparts(inputFile);
    %check file type that are allowed
    switch ext
        case {'.bmp','.jpg','.jpeg'}
            validInputFileList = [validInputFileList; inputFile]; %#ok<AGROW>
        otherwise 
            continue;
    end
end
indexFileList = {};
queryFileList = {};
N = length(validInputFileList);
k1 = 2; k2 = 5; k3 = 6; 
for i = 1:N
    if(k1==0 || k2 == 0 || k3 ==0)
        queryFileList = [ queryFileList ; validInputFileList{i} ];
    else
        indexFileList = [ indexFileList ; validInputFileList{i} ];
    end
    if(k1==0)
        k1 = 2;
    else
        k1 = k1-1;
    end
    if(k2==0)
        k2 = 5;
    else
        k2 = k2-1;
    end
    if(k3==0)
        k3 = 6;
    else
        k3 = k3-1;
    end
end
end    
    
               