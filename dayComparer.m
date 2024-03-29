function [stronger] = dayComparer(subID, D1, D2)
%This funtion compares whether or not an individual showed an improvement
%in score between two sessions. Inputs must be in the order of subject ID
%number, results of one testing session to follow up session.

improved = [];
%This creates a vector to store SubjectIDs of those who have imporved their
%scores between sessions

for i = 1:length(subID);
%This will repeat for each individual for as many "subIDs" you have

    if D2(i) > D1(i);
    %if the follow up session has a higher result than the session that
    %came before it, this loop will run
    
        stronger = subID(i);
        %This temporarility stores the output of the individual ID whose testing
        %days were measured in this loop 
   
        improved = [improved, stronger];
        %This stores that specific individual's ID number to the variable
        %"improved", which will eventually store all the subjects who have
        %improved their performance 
    
    end
    
end

stronger = improved; 
%This makes the output of the function equal to the varibale "improved",
%which stored all the subject IDs of individuals who had a higher result
%than in the session before 


end

