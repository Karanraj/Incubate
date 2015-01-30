public with sharing class HomefaqController {
public List<Faq__c> apexFAQ {get;set;}
public List<Faq__c> visualforceFAQ {get;set;}
public List<Faq__c> s1mobileFAQ {get;set;}

    public homefaqController(){
        apexFAQ = new List<Faq__c>();
        visualforceFAQ = new List<Faq__c>();
        for(Faq__c faqs: [Select id,name,question__c,answer__c,type__c,Question_Param__c, Long_Text_Code__c,(select id,Answer_Part_1__c,Answer_Part_2__c, Answer_Part_3__c, Answer_Gist_Part_1__c, Answer_Gist_Part_2__c, Answer_Gist_Part_3__c from FAQAnswers__r) from faq__c]){
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