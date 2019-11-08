function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(G, D1, D2, D3)

% This function allows you to find the mean of a specific gender's average
% for 3 different points of data. The inputs need to include the
% individual's gender('M' or 'F') first, then the data points collected. The first two outputs
% will return the individual means for each male and each female. The last
% two outputs will return the average of all male means and the average of
% all female means.


maleIsoIndMeans = [];
femaleIsoIndMeans = [];
%This establishes that all of the male and female individual means will be
%saved into a vector to later calculate total gender means.

for i = 1:length(G)
%This code will run as many times as the variable length of "G" is repeated

    if G(i) == 'M'
        mIndAvg = (D1(i) + D2(i) + D3(i))/3;
        %The average of each individual male ('M') is calculated across the inputed data points.
        
        maleIsoIndMeans = [maleIsoIndMeans, mIndAvg];
        %Each time a new mean value for a male is calculate, it gets added
        %to the variable maleIsoIndMeans.
          
        
    elseif G(i) == 'F'
        fIndAvg = (D1(i) + D2(i) + D3(i))/3;
         %The average of each individual female ('F') is calculated across the inputed data points.
         
        femaleIsoIndMeans = [femaleIsoIndMeans, fIndAvg];
        %Each time a new mean value for a female is calculate, it gets added
        %to the variable femaleIsoIndMeans.
        
    end
end

maleGroupIsoMean = sum(maleIsoIndMeans)/length(maleIsoIndMeans);
%This code creates the output for maleGroupIsoMean by taking the average of
%the stored individal male means 

femaleGroupIsoMean = sum(femaleIsoIndMeans)/length(femaleIsoIndMeans);
%This code creates the output for femaleGroupIsoMean by taking the average of
%the stored individal female means 
end

