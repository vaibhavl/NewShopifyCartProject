public with sharing class AccountControllerServerSide {
   @AuraEnabled
   public static AccountWrapperClass getAccountsServerSide(Integer limitValue, Integer offsetValue){
         
      AccountWrapperClass result= new AccountWrapperClass();
      result.accounts= [SELECT Id, Name, Amount, CloseDate,StageName 
                          FROM Opportunity 
                          LIMIT :limitValue OFFSET :offsetValue];
       
       result.totalCountRecords=[SELECT count() FROM Opportunity];

   
 
      return result;
                        
   }
 public class AccountWrapperClass {
        @AuraEnabled public List<Opportunity> accounts;
        @AuraEnabled public Integer totalCountRecords;
    }
}