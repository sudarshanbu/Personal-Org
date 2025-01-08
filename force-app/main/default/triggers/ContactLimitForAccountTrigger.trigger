trigger ContactLimitForAccountTrigger on Contact (before delete) {
     PracticeHandler.avoidDeleteContact(Trigger.old);
}