function secAns = datetime2sec(datetimeInfo)
%DATETIME2SEC
% 
% secAns = DATETIME2SEC(datetimeInfo) is used to convert the date string to
% year.(sec/all sec).
% datetimeInfo: date string
% 
% coded by Chan, Chun-Hsiang @ Taipei, Taiwan
yearOfdate = year(datetimeInfo);
zeroPoint = [num2str(yearOfdate), '/01/01 00:00:00'];

dev = etime(datevec(datetimeInfo),datevec(zeroPoint));

eu = 0;
if mod(yearOfdate,400)==0
    eu = 1;
elseif mod(yearOfdate, 4)==0 && mod(yearOfdate, 100)~=0
    eu = 1;
end

if eu == 1
    yearSec = 31622400;
    pp = dev/yearSec;
else
    yearSec = 31536000;
    pp = dev/yearSec;
end

secAns = yearOfdate+pp;
% done by CCH (TooDou)