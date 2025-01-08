public class ContactHandler {
	List<Contact>newContacts= new List<Contact>();
List<Contact>updatedContacts = new List<Contact>();
List<Id>deletedContactIds = new List<Id>();
List<Contact>existingContacts = new List<Contact>();
List<Contact>duplicateContacts = new List<Contact>();
public list<contact> fetchExistingContacts(Map<String, Object> criteria){
List<String> criteriaKeys = new List<String>(criteria.keySet());
List<Object> criteriaValues = new List<Object>(criteria.values());
String A = 'SELECT Id, Name FROM Contact WHERE '+
String.join(criteriaKeys, ' = :criteriaValues AND ')+' = :criteriaValues';
List<Contact> existingContacts = Database.query(A);
return existingContacts;
}
public List<Contact> searchContactsByField(String fieldName, String searchValue) {
String B = 'SELECT Id, Name FROM Contact WHERE ' + fieldName + ' = :searchValue';
List<Contact> matchingContacts = Database.query(B);
return matchingContacts;
	 }
//public List<Contact> filterContactsByCriteria(Map<String, Object> criteriaMap) {}
 
//public Integer countContacts(Map<String, Object> criteria) {}
public void insertOrUpdateContacts(List<Contact> contactsToUpdate, List<Contact> contactsToInsert) {
insert contactsToInsert;
update contactsToUpdate;
	}
public void deleteContacts(List<Id> deletedContactIds) {
delete [SELECT Id FROM Contact WHERE Id IN :deletedContactIds];
	}
 
public void undeleteContacts(List<Id> undeletedContactIds) {
undelete [SELECT Id FROM Contact WHERE Id IN :undeletedContactIds];
	}
 
	public List<Contact> checkForDuplicates(List<Contact> newContacts) {
duplicateContacts = new List<Contact>();
for (Contact newContact : newContacts) {
for (Contact existingContact : existingContacts) {
if (newContact.Name == existingContact.Name) {
duplicateContacts.add(newContact);
break;
}
}
}
return duplicateContacts;
}
}