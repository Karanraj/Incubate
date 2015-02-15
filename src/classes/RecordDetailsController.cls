/**
 * Copyright (c) - MIT License
 * Author - Harshit Pandey 
 * Author - Karanraj ShankarNarayan
 * Feb : 2015
 **/

//
// Controller Class - Class for Reading URL through Map 
//
 
public class RecordDetailsController {
    
    //Private properties
    private string questionId {get; set;}
    private string questionTitle {get; set;}
    public Faq__c questionTitleBasedOnId {get;set;}
    public List<Faq__c> relatedQuestions {get;set;}
    
    //Map of PageParameters 
    private Map<string,string> pageParams=ApexPages.currentPage().getParameters();
    
    //Set the variable in Constructor
    public RecordDetailsController() 
    {
        //get each variable through Map       
        if(String.isEmpty(ApexUtil.GetValueFromParam('question')))
            ErrorHandler.showError('Requested URL doesn\'t match any record. Please contact administrator.');
        questionTitleBasedOnId = IncubatorHelper.GetQuestionAndAnswerFromId(ApexUtil.GetValueFromParam('question'));
        if(questionTitleBasedOnId != null)
          relatedQuestions = IncubatorHelper.getRelatedQuestion(questionTitleBasedOnId.Question_param__c, questionTitleBasedOnId.Type__c, 5);
        
    }
 }