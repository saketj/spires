function [timeseriesData infoTags metadata] = loadDataset(datasetPath)

%constants 
databaseMATfile = fullfile(datasetPath,'database.mat');

if(exist(databaseMATfile,'file'))
    database = load(databaseMATfile);
    timeseriesData = database.timeseriesData;
    infoTags = database.infoTags;
    metadata = database.metadata;
else
    timeseriesData = [];
    infoTags = {};
    metadata = struct;
    metadata.nextNodeId = 1;
end
end