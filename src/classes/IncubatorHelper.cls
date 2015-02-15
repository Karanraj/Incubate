/**
 * Copyright (c) - MIT License
 * Author - Harshit Pandey 
 * Author - Karanraj ShankarNarayan
 * Feb : 2015
 **/

 /*
* IncubatorProject Helper Class - This class cover method commonly shared accors the Incubator Project
*/
public class IncubatorHelper {

    // ==============================================================================
    // Method Usage  - Method to get Questions records
    // ==============================================================================

    public static List<faq__c> GetQuestionList()
    {
        return [Select Id,Name,Question__c,Answer__c,Type__c,Question_Param__c from faq__c];
    }

    // ==============================================================================
    // Method Usage  - Method to get the Question and Answer based on Id 
    // ==============================================================================
    public static faq__c GetQuestionAndAnswerFromId(String faqId){
        faq__c toReturn=null;
        if(ApexUtil.isvalueValid(faqId))
        {
            try
            {
                toReturn=[Select Id,Name,Question__c,Answer__c,Type__c,Question_Param__c, Long_Text_Code__c,(select Id,Answer_Part_1__c,Answer_Part_2__c, Answer_Part_3__c, Answer_Gist_Part_1__c, Answer_Gist_Part_2__c, Answer_Gist_Part_3__c from FAQAnswers__r) from Faq__c where Id =: faqId or Question_Param__c =: faqId];
            } Catch(QueryException e)
            {
                ErrorHandler.showWarning(e.getMessage());
            }
        }
        return toReturn;
    }

    // ==============================================================================
    // Method Usage  - Method to get related questions 
    // ==============================================================================

    public static List<faq__c>  getRelatedQuestion(string currentQuestionId, string questionType, Integer recordLimit)
    {
        //Dymanic Query
        string query  = 'SELECT id,Question__c,Question_Param__c, Type__c FROM faq__c';
        query +=' WHERE Question_Param__c !=: currentQuestionId AND Type__c =: questionType LIMIT: recordLimit';
        //Initiate the list to reuturn
        List<faq__c> relatedQuestionList = Database.query(query);
        return relatedQuestionList;
    }

}