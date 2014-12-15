function [dist] = findEuclidDist(data)
M = size(data,1);
N = size(data,2);
dist = zeros(M,M);
for i = 1:M
    for j = 1:M
        ts1 = data(i,:);
        ts2 = data(j,:);
        distVal = 0;countMatch = 0;
        for k = 1:N
            if(~isnan(ts1(k))&&~isnan(ts2(k)))
                distVal = distVal + (ts1(k)-ts2(k))^2;
                countMatch = countMatch + 1;
            end
        end
        dist(i,j) = single(distVal)/single(countMatch);
    end
end