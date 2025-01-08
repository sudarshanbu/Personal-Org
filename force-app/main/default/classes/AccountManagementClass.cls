public class AccountManagementClass {
    private List<Account> accountList;
    private Set<Account> accountSet;
    private Map<Id, Account> accountMap;

    public AccountManagementClass() {
        accountList = new List<Account>();
        accountSet = new Set<Account>();
        accountMap = new Map<Id, Account>();
    }
    public void addAccount(Account newAccount){
        accountList.add(newAccount);
        accountSet.add(newAccount);
        accountMap.put(newAccount.Id, newAccount);
    }
    public void updateAccount(Account updatedAccount) {
        for (Account acc : accountList) {
            if (acc.Id == updatedAccount.Id) {
                acc.Name = updatedAccount.Name;
                // ... other fields ...
                break;
            }
        }
       // accountSet.remove(updatedAccount);
        //accountSet.add(updatedAccount);
        //accountMap.put(updatedAccount.Id, updatedAccount);
    }
    public Account getAccountById(Id accountId) {
        return accountMap.get(accountId);
    }
    public void deleteAccount(Id accountId) {
        Account accToDelete = accountMap.get(accountId);
        if (accToDelete != null) {
            //accountList.remove(accToDelete);
            accountSet.remove(accToDelete);
            accountMap.remove(accountId);
        }
    }
    public List<Account> retrieveAllAccounts() {
        return accountList;
    }
}