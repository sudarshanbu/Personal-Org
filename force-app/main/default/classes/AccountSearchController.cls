public with sharing class AccountSearchController {
    @AuraEnabled(cacheable=true)
    public static List<Account> findAccounts(String name) {
        String nameLike = '%' + name + '%';
        return [SELECT Id, Name FROM Account WHERE Name LIKE :nameLike LIMIT 10];
    }
}