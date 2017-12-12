function  dataMat = loadPOS2secFormat(filename)
%LOADPOS2SECFORMAT
% 
% dataMat = LOADPOS2SECFORMAT(filename) is used to load pos file and
% convert the datetime data into another resolution (unit: seconds).
% 
% code by Chan, Chun-Hsiang @ Taipei, Taiwan 20171212
% LOADPOS2SECFORMAT ver.20171212001

fid=fopen(filename);
formatSpec = '%5s%3s%3s%9s%18f%18f%18f%18f%18f%18f%C%[^\n\r]';
dataArray = textscan(fid, formatSpec, 'Delimiter', '', 'WhiteSpace', '',   'ReturnOnError', false);
% 'TextType', 'string',
dataArray{1} = strtrim(dataArray{1});
dataArray{2} = strtrim(dataArray{2});
dataArray{3} = strtrim(dataArray{3});
dataArray{4} = strtrim(dataArray{4});
fclose(fid);


dataMat = zeros(length(dataArray{1}),7);
for i = 1:length(dataArray{1})
    d = [dataArray{1}{i}, '/', dataArray{2}{i}, '/', dataArray{3}{i}, ' ', dataArray{4}{i}];
    sd = datetime2sec(d);
    dataMat(i,1) = sd;
end

for i = 1:6
    dataMat(:,i+1) = dataArray{1,i+4};
end

fprintf('Successfully load and convert the specified file!\n');
% done by CCH (TooDou) 20171212