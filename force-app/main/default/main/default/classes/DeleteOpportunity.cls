public class DeleteOpportunity {

    public static void DeleteOpp(Date inputDate) {
      List<Opportunity> oppList = new List<Opportunity>();
         oppList =[ SELECT Id, Name, CloseDate
       								 FROM Opportunity
        							 WHERE CloseDate < :inputDate];
        if(!oppList.isEmpty()) {
   			delete oppList;
        }
    }
}