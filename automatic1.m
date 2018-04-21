% this project aims to process data automaticlly for the detection of defects in materials, including the following steps:
% 1.reducing noise using the leastquares
% 2.standardizing the data
% 3.selecting the crucial pictures
% 4.confirm the areas of the defects
% 5.calculating the depth of the defects
% 6.making judgements according to the areas and depth of defects
% 7.demonstrate all the defects clearly in one single picture
% 8.plotting the data in the gif form for manual observation
% F2 = F1; 
% input the original data F1, which includes 60 pictures(120*105), and save as F2
format long
%F3 = standardize(F1);
F2 = TSR(F1,60);
% the standardized version is saved as F3
%F4 = leastquares(F3); % reduce noise and save as F4
F3 = smooth(F2); % smooth and reduce noise
chosen = select(F1); % select the representative one
F5 = leastquares(F3);
user_window(); % create user window for observation
F6 = area(F1);
mean_depth = depth( F1,F5 ); % estimate the depth of each defect






