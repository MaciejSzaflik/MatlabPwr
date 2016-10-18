function[I,map_1] = toSepia(path,mulValue)
[I,map] = imread(path);
[m,n] = size(map);
v = [1,1,mulValue];
map_1 = repmat(v,m,1);
map_1 = map_1.*map;
