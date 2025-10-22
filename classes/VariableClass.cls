public class VariableClass{
 
    public integer i= 10;
    public boolean checkIfRecordExist= false;
    public Date todaysDate; 
    
    public static Decimal calculateDiscount(Decimal sellingPrice, Integer discount ){
       Decimal TotalPrice= sellingPrice-(sellingPrice*discount)/100;
        
        return TotalPrice;
        
    }
    public static void convertId(){
      	String id15 = '001dL00000Z2Ajy';
		Id id18 = id15; // Automatically converted to 18-digit
		System.debug(id18);
    }

}