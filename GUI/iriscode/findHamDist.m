function dist = findHamDist(data1,data2)
M = length(data1);
dist = zeros(M,M);
for i = 1:M
    for j = 1:M
        dist(i,j) = gethammingdistance(data1{i}, data2{i}, data1{j}, data2{j}, 1);
    end
end
end