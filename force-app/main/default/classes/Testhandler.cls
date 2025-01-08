public class Testhandler {
	public Static void updateRelatedContactsTriggerHandler(List<Account> records) {
        for (Account a : records) {
            List<Contact> contacts = [SELECT Id, Name, AccountId FROM Contact WHERE AccountId = :a.Id];
            for (Contact c : contacts) {
                if(a.Id==c.AccountId)
                {
                    c.Lastname=a.name;
                }
            }
            update contacts;
        }
    }
}