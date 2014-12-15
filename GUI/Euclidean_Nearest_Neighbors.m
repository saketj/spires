function queryNN = Euclidean_Nearest_Neighbors(queryInputTimeseries,timeseriesData,K)
N = size(queryInputTimeseries,1);
T = size(timeseriesData,1);
queryNN = size(N,2*K);
for i = 1:N
    dist = zeros(T,1);
    ts1 = queryInputTimeseries(i,:);
    for j = 1:T
        ts2 = timeseriesData(j,:);
        dist(j) = findEuclidDistance(ts1,ts2);
    end
    [sort_dist idx] = sort(dist,'ascend');
    for k = 1:K
        queryNN(i,2*k-1) = idx(k);
        queryNN(i,2*k) = sort_dist(k);
    end
end
end

function dist = findEuclidDistance(ts1,ts2)
N = length(ts1);
distVal = 0;countMatch = 0;
for k = 1:N
    if(~isnan(ts1(k))&&~isnan(ts2(k)))
        distVal = distVal + (ts1(k)-ts2(k))^2;
        countMatch = countMatch + 1;
    end
end
dist = single(distVal)/single(countMatch);
end
