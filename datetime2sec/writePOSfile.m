function writePOSfile(filename, dataMat)
%WRITEPOSFILE
% 
% WRITEPOSFILE is used to write a file to save dataMat.
% filename: string
% dataMat: data
% 
% coded by Chan, Chun-Hsiang @ Taipei, Taiwan 20171212

fid = fopen(filename,'wt');
for i = 1:size(dataMat,1)
    fprintf(fid,'%10.4f\t',dataMat(i,:));
    fprintf(fid,'\n');
end
fclose(fid);

fprintf('Successfully write pos file!\n');
% done by CCH (TooDou)