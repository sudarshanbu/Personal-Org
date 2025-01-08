public class AccountHandler {
	List<Account> newAccounts;
    List<Account> updatedAccounts;
    List<Id> deletedAccountIds;
    List<Account> existingAccounts;
    List<Account> duplicateAccounts;
    List<Account> newList;
    List<Account> newList1;
    
    public List<Account> fetchExistingAccounts(String name){
         existingAccounts = [SELECT Name FROM Account WHERE Name LIKE :name];
         return existingAccounts;
    }
    
    public List<Account> searchAccountsByField(String fieldName,String searchValue){
      	 String query = 'SELECT Id, Name FROM Account WHERE ' + fieldName + ' LIKE \'%' + searchValue + '%\'';
         newList = database.query(query);
         return newList;
    }
    
    public List<Account> filterAccountsByCriteria(List<String> criteriaList){
        String query = 'SELECT Id, Name FROM Account WHERE Name IN :criteriaList';
        newList1 = database.query(query);
        return newList1;
    }
    
    public Integer countAccounts(String criteria){
        String s = '%'+ criteria +'%';
        String query = 'SELECT COUNT() from Account WHERE Name Like :s';
        Integer count = database.countquery(query);
        return count;
    }
    
    public void insertAccounts(List<Account> newAccounts){
        insert newAccounts;
    }
    
    public void updateAccounts(List<Account> updatedAccounts){
     	update updatedAccounts;  
    }
    
    public void deleteAccounts(List<Id> deletedAccountIds){
        Delete [SELECT id FROM Account WHERE id in :deletedAccountIds];
    }
    
    public void unDeleteAccounts(List<Id> unDeletedAccountIds){
        Delete [SELECT id FROM Account WHERE id in :unDeletedAccountIds];
    }
	public List<Account> checkForDuplicates(List<Account> newAccounts) {
        duplicateAccounts = new List<Account>();
        for (Account newAccount : newAccounts) {
            for (Account existingAccount : existingAccounts) {
                if (newAccount.Name == existingAccount.Name) {
                    duplicateAccounts.add(newAccount);
                    break;
                }
            }
        }
        return duplicateAccounts;
    }
    
}