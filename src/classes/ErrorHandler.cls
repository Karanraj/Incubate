//=====================================================================
//@Apex Code : Error Handler
//Used for displaying standard salesforce error messages
//=====================================================================

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