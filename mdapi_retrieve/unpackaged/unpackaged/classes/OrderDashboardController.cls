public with sharing class OrderDashboardController {
    @AuraEnabled(cacheable=true)
    public static List<Shopify_Order__c> getOrders() {
        return [SELECT Name, Customer_Email__c, Total_Amount__c, Status__c 
                FROM Shopify_Order__c 
                WHERE Status__c IN ('pending', 'fulfilled', 'cancelled') 
                ORDER BY CreatedDate DESC LIMIT 100];
    }
}