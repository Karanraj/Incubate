//=============================
//@Apex Code : Error Handler
//Author : Harshit Pandey
//=============================

//=============================
//How to use this class ? 
//  -Scene 1 : if question ID is blank
//  if(QuestionDetailsController.questionId.isEmpty() || QuestionDetailsController.questionId.isEmpty())
      
//      showError('Question Record you request doesn't exist ' + questionId);   
//=============================
 
global class ErrorHandler{
 
 
global static void showMsg(ApexPages.Severity sev, String message)
    {
        ApexPages.Message msg = 
            new ApexPages.Message(sev, message);
        ApexPages.addMessage(msg);
    }
    global static void showConfirm(String conf)
    {
         showMsg(ApexPages.Severity.Confirm,conf);
    }
    global static void showInfo(String info)
    {
        showMsg(ApexPages.Severity.Info,info);
    }
    
    global static void showWarning(String warn)
    {
        showMsg(ApexPages.Severity.Warning,warn);
    }
    
    global static void showError(String err)
    {
       showMsg(ApexPages.Severity.Error,err);
    }
 
}