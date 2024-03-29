%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 5: Analyzing Isometric Strength Data
% Cassie Fileccia
% Due: November 7
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%This code allows a user to import data and calculate specific measures
%from that data. User will be able to find individual means for both males
%and female, find overal mean for male and females, and be able to compare
%outcome values between testing days.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803 (2).csv');

[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

maleIsoIndMeans = maleIsoIndMeans.'
%Stores variable with one column and multiple rows

femaleIsoIndMeans = femaleIsoIndMeans.'
%Stores variable with one column and multiple rows

day1toDay2 = dayComparer(SubjectID, Day1, Day2);

day1toDay2 = day1toDay2.'

day2toDay3 = dayComparer(SubjectID, Day2, Day3);

day2toDay3 = day2toDay3.'

normDay1mean = sum(Day1)/sum(Weight)
%Normalize data by taking average of the sum of all day 1 values and
%dividing by the weight of each subject

normDay2mean = sum(Day2)/sum(Weight)
%Normalize data by taking average of the sum of all day 2 values and
%dividing by the weight of each subject

normDay3mean = sum(Day3)/sum(Weight)
%Normalize data by taking average of the sum of all day 3 values and
%dividing by the weight of each subject




