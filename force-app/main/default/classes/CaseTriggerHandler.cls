public class CaseTriggerHandler {
    public static void handleBeforeInsertCase(Map<Id, Case> newCaseMap) {
        for (Case c : newCaseMap.values()) {
            if (c.Subject == null || c.Subject == '') {
                c.addError('Subject cannot be empty.');
            }
            if (c.Status == null || c.Status == '') {
                c.addError('Status cannot be empty.');
            }
        }
    }
    public static void handleBeforeUpdateCase(Map<Id, Case> newCaseMap){
        for(case c : newCaseMap.values()){
            
        }
    }
}