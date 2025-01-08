public with sharing class AccountController {
    @AuraEnabled
    public static Account getAccountDetails(String name) {
        List<Account> accounts = [SELECT Id, Phone FROM Account WHERE Name = :name LIMIT 1];
        if (!accounts.isEmpty()) {
            return accounts[0];
        } else {
            return null;
        }
    }
    @AuraEnabled
    public static Account createAccount(String name) {
        Account newAccount = new Account(Name = name);
        insert newAccount;
        return newAccount;
    }

}