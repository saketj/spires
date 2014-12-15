function queryNN = Query_FromIndex(queryInputTimeseries,datasetPath,K)
%%%%file specifications 
%first line contains N - no. of queries
%second line contains K - no. of NNs
% N lines containing query timeseries

currentPath = cd;
cppFilename = 'xyz.cpp';
cppFilepath = fullfile(currentPath,cppFilename);
cd(datasetPath);

dlmwrite('queryInput_toIndex.txt',queryInputTimeseries,'precision', '%.6f','delimiter', '\t','newline', 'unix');

%issue system commands from here
system('...');

%process the output data
M = dlmread('queryOutput_fromIndex.dat');
queryNN = M;
end
