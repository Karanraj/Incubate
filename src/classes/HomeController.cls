/**
 * Copyright (c) - MIT License
 * Author - Harshit Pandey 
 * Author - Karanraj ShankarNarayan
 * Feb : 2015
 **/

 public with sharing class HomeController {

    public List<Faq__c> apexFAQ {get;set;}
    public List<Faq__c> visualforceFAQ {get;set;}
    public List<Faq__c> s1mobileFAQ {get;set;}

    public HomeController(){

        apexFAQ = new List<Faq__c>();
        visualforceFAQ = new List<Faq__c>();
        
        for(Faq__c faqs: IncubatorHelper.GetQuestionList()){
        
            if(faqs.Type__c == 'Apex'){
               apexFAQ.add(faqs); 
            }
            else if(faqs.Type__c == 'Visualforce'){
                visualforceFAQ.add(faqs);
            }
            else if(faqs.Type__c == 'Salesforce1'){
                s1mobileFAQ.add(faqs);
            }
        }
    }
}