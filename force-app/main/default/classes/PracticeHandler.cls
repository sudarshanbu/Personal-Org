public class PracticeHandler {
    public Static void avoidDeleteContact(List<Contact> Contacts ){
        for(contact c : contacts){
            if(c.AccountId == null){
                c.addError('You Cannot Delete This Contact');
            }
        }
    }
}