/**
 * Copyright (c) - MIT License
 * Author - Harshit Pandey 
 * Author - Karanraj ShankarNarayan
 * Feb : 2015
 **/

global without sharing  class ApexUtil{
    
    // ==============================================================================
    // Method Usage  - Declaring Methods in HelperClass can be used repetedly, promotes 
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
    
}