public class AccountDemoClass {
    
    
    
    public static void listDemo()
    {
      //Set<Id> accIds = new Set<Id>();
	  List<Account> accList =  new  List<Account>();
       Map<Id, Account> accMap= new Map<Id, Account>();
       
       
        for( List<Account> acct : [SELECT Id, Name FROM Account LIMIT 6])
      {
           //accMap.put(acc.Id,acc);    
         system.debug(+acct);
          
      }
           //system.debug(+accMap);
        
        
         //system.debug(+acc);
        
       /* colors.put(1,'green');
        colors.put(2,'white');
        colors.put(3,'pink');
        colors.put(0,'red');
       system.debug(+colors);
       /* for( Account acc : accList)
      {
          accIds.add(acc.Id);
          system.debug(+acc);
          
      }*/
         //system.debug(+acc);
    }
   /* public static void listDemoPos()
    {
      Set<Id> PosIds = new Set<Id>();
	  List<Employee__c> accList2 =  new  List<Employee__c>();
      accList2= [SELECT Id, Name FROM Employee__c LIMIT 5];
     
       for(Employee__c pos : accList2)
      {
          PosIds.add(pos.Id);
           system.debug(+pos.Name);
      }
        system.debug(+PosIds);
       
    }*/
}