/**
 * Copyright (c) - MIT License
 * Author - Harshit Pandey 
 * Author - Karanraj ShankarNarayan
 * Feb : 2015
 **/

 /*
* Controller Class - Class for Reading URL through Map 
*/
 
public class QuestionsHelper {
    //*********************************************************************************
    // *Tip : Get the PageParameters in a Map and get key,values pairs smoothly of this 
    //*********************************************************************************
    
    // URi to read - http://perfpod.salesforce.com/apex/helloworld?questionid=abdasdfsd
    // Another implementation could be http://perfpod.salesforce.com/apex/questionDetailController?q=asdfsdfasf&question_title=what_is_apex
    
    //Private properties
    private string questionId {get; set;}
    private string questionTitle {get; set;}
    public faq__c questionTitleBasedOnId {get;set;}
    
    //Map of PageParameters 
    private Map<string,string> pageParams=ApexPages.currentPage().getParameters();
  }