@isTest
public class PracticeHandlerTest {
    @isTest static void testAvoidDeleteContact() {
        // Create a Contact without an Account
        Contact Contacts = new Contact(LastName = 'Test');
        insert Contacts;

        // Attempt to delete the Contact and catch the error
        Exception e;
        try {
            delete Contacts;
        } catch(DmlException ex) {
            e = ex;
        }

        // Verify that the error was thrown
        System.assertNotEquals(null, e);
        System.assert(e.getMessage().contains('Cannot delete Contact without an associated Account.'));
    }

    @isTest static void testContactDeletionWithAccount() {
        // Create an Account
        Account a = new Account(Name = 'Test Account');
        insert a;

        // Create a Contact linked to the Account
        Contact Contacts = new Contact(LastName = 'Test', AccountId = a.Id);
        insert Contacts;

        // Attempt to delete the Contact
        Test.startTest();
        delete Contacts;
        Test.stopTest();

        // Verify that the Contact was deleted
        System.assertEquals(0, [SELECT count() FROM Contact WHERE Id = :Contacts.Id]);
    }
}