/*
* Copyright (c) 2015.
* Author- Harshit Pandey
* Controller Class - Class for Reading URL through Map 
*/
 
public class QuestionDetailsController {
    //*********************************************************************************
    // *Tip : Get the PageParameters in a Map and get key,values pairs smoothly of this 
    //*********************************************************************************
    
    // URi to read - http://perfpod.salesforce.com/apex/helloworld?questionid=abdasdfsd
    // Another implementation could be http://perfpod.salesforce.com/apex/questionDetailController?q=asdfsdfasf&question_title=what_is_apex
    
    private string questionId {get; set;}
    //for second type of impletmentation
    private string questionTitle {get; set;}
    public faq__c questionTitleBasedonId {get;set;}
    
    //Map of PageParameters 
    private Map<string,string> pageParams=ApexPages.currentPage().getParameters();
    
    //Set the variable in Constructor
    public QuestionDetailsController() 
    {
        //get each variable through Map
        questionId = ApexHelper.GetValueFromParam('question'); 
       // questionTitle = ApexHelper.GetValueFromParam('question_title');
        if(questionId == '' && questionTitle == '' ){
            ErrorHandler.showError('Please pass Question Record in your request' + questionId);
            return;   
        }
        else if(questionId != null){
            try{
                questionTitleBasedonId = ApexHelper.GetQuestionAndAnswerFromId(questionId);
            }Catch(Exception ex){
                ErrorHandler.showWarning('Question Record you requested doesn\'t exist ' + questionId);
            }
        }
        /*else if(questionTitle != null ){
            try{
                questionTitleBasedonId = ApexHelper.GetQuestionAndAnswerFromId(questionTitle);
            }Catch(Exception ex){
                ErrorHandler.showWarning('Question Record you requested doesn\'t exist ' + questionId);
            }
        }*/

        
    }
 }