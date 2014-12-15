function [] = saveDataset(datasetPath,timeseriesData,infoTags,metadata)

%constants 
databaseMATfile = fullfile(datasetPath,'database.mat');

save(databaseMATfile,'timeseriesData','infoTags','metadata');

end