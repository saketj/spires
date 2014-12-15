function [] = update_index_bulkLoad(inputTSdata,inputNodeIds,datasetPath,append)

M = horzcat(inputNodeIds,inputTSdata);
dlmwrite('input_toIndex.txt', M, 'precision', '%.6f','delimiter', '\t','newline', 'unix');

currentPath = cd;
cppFilename = 'xyz.cpp';
cppFilepath = fullfile(currentPath,cppFilename);
cd(datasetPath);
%issue shell commands from here
system('...');
end

