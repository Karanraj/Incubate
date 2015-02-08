/*
* Helper Class - Helper class for the FAQ visualforce page 
*/

global without sharing  class ApexHelper{
    
    // ==============================================================================
    // Page Methods  - Declaring Methods in HelperClass can be used repetedly, promotes 
    // code re-usage
    // ==============================================================================
    public static string GetValueFromParam(string ParamKey)
    {
        string toReturn='';
        if(ApexPages.currentPage().getParameters().containsKey(ParamKey))
        {            
            toReturn=ApexPages.currentPage().getParameters().get(ParamKey);
        }
        return toReturn;
    }      
    
    public static Boolean isValueValid(String value)
    {
        //If the value passed is empty - return false 
        Boolean toReturn = true;
        if(String.isEmpty(value))
            toReturn=false;
        return toReturn;
    }
    // ==============================================================================
    // Page Methods  - Method to get the Question and Answer based on Id 
    // Parameters - Id
    // Return - Faq
    // ==============================================================================
   
    public static faq__c GetQuestionAndAnswerFromId(String faqId){
        faq__c toReturn=null;
        if(isvalueValid(faqId))
        {
            try
            {
                toReturn=[Select id,name,question__c,answer__c,type__c,Question_Param__c, Long_Text_Code__c,(select id,Answer_Part_1__c,Answer_Part_2__c, Answer_Part_3__c, Answer_Gist_Part_1__c, Answer_Gist_Part_2__c, Answer_Gist_Part_3__c from FAQAnswers__r) from faq__c where Id =: faqId or Question_Param__c =: faqId];
            } Catch(QueryException e)
            {
                ErrorHandler.showWarning(e.getMessage());
            }
        }
        return toReturn;
    }
}