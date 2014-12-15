function queryOutputData = query_database(queryInputTimeseries,datasetPath,K)

[timeseriesData infoTags metadata] = loadDataset(datasetPath);

%get the output from the index file after sending the query
queryNN = Euclidean_Nearest_Neighbors(queryInputTimeseries,timeseriesData,K);
%queryNN = Query_FromIndex(queryInputTimeseries,datasetPath,K);
%%%%%

N = size(queryInputTimeseries,1);
queryOutputData = cell(N,1);
for i = 1:N
    outputData = struct;
    outputData.userId = cell(1,K);
    outputData.imageId = cell(1,K);
    outputData.filepath = cell(1,K);
    outputData.timeseries = cell(1,K);
    outputData.distance = cell(1,K);

    outputNN = queryNN(i,:);
    for j = 1:K
        nodeId = outputNN(2*j-1);
        outputData.distance{j} = outputNN(2*j);
        outputData.userId{j} = infoTags{nodeId}.userId;
        outputData.imageId{j} = infoTags{nodeId}.imageId;
        outputData.filepath{j} = infoTags{nodeId}.filepath;
        outputData.timeseries{j} = timeseriesData(nodeId,:);
    end
    queryOutputData{i} = outputData;
end