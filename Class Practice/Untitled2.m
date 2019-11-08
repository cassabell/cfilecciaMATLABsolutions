for subjectNum = 1:2
    
%     currentSubject = str2num(firstSubject(8);
%     
%     currentSubject = num2str(currentSubject);
%     
%     subectNum = strcat('Subject', currentSubject)

    currentSubject = num2str(subjectNum);
    
    currentSubjectNumber = strcat('Subject', currentSubject);
    
    disp(currentSubjectNumber)
    
    for conditionNum = 1:2
        
        currentCondition = num2str(subjectNum);
    
        currentConditionNumber = strcat('Condition', currentCondition);
    
        disp(currentConditionNumber)
        
        subAndCond = strcat(currentSubjectNumber, '_', currentConditionNumber);
        
        disp (subAndCond)
        
        
    end
    
end