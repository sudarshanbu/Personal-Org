public class AccountHandlerClass {
    
    public static void createOrUpdateAccountTriggerHandler(List<Account> records) {
        List<Account> newAccounts = new List<Account>();
        List<Account> existingAccounts = new List<Account>();
 
    for (Account record : records) {
        if (record.Id == null) {
		Account newAccount = new Account(Name = record.Name + 'test');
		newAccounts.add(newAccount);
		} 
        else {
		Account existingAccount = [SELECT Id, Name,Phone FROM Account WHERE Id = :record.Id];
		existingAccount.Phone = '1234567890';
		existingAccounts.add(existingAccount);
        }
    }
   if (!newAccounts.isEmpty()) {
            insert newAccounts;
        }
 
        if (!existingAccounts.isEmpty()) {
            update existingAccounts;
        }

}
    
		public Static void deleteAccountTriggerHandler(List<Account> records) {
		List<Account> accountsToDelete = new List<Account>();

   		for (Account record : records) {
			Account account = [SELECT Id FROM Account WHERE Id = :record.Id];
			accountsToDelete.add(account);
			}
			delete accountsToDelete;
}
    
       public List<Account> retrieveAccountDetailsTriggerHandler(List<Account> records) {
        List<Account> accounts = new List<Account>();
        for (Account record : records) {
            Account account = [SELECT Id, Name, BillingAddress, (SELECT Id, Name FROM Contacts) FROM Account WHERE Id = :record.Id];
            accounts.add(account);
        }
        return accounts;
    }
    
       public List<Account> searchAccountsTriggerHandler(String criteria) {
        List<Account> accounts = new List<Account>();
        String s='%'+criteria+'%';
        String query = 'Select id,name From Account WHERE Name Like:s';
        accounts = Database.query(query);
        return accounts;
    }
    
    	Public Static void updateRelatedContactsTriggerHandler(List<Account> accList, Map<Id, Account> oldMap){
        set<Id> ids = new set<Id>();
            for(Account acc : accList ){
                ids.add(acc.id);
            }
        List<contact> conToUpdate = new List<contact>();
        List<Account> newAccList = [SELECT Id,Name,phone,(SELECT AccountId,Phone FROM contacts) FROM Account WHERE Id In:ids];
        
            
                    
            }
 }