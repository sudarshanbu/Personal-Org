public class GetData {
   /* public List<String> SameName {get; set;}
    public GetData(){
        SameName = new List<String>();
    }*/

    Public Static List<String> getAccount(){
        List<String> SameName = new List<String>();
        Map<Id,Account> AccMap = new Map<Id,Account>([SELECT Id, Name FROM Account]);
        List<Id> getAccId = new List<Id>();
        List<String> getAccName = new List<String>();
        /*for(Account idKey : AccMap.values()){
            getAccId.add(idKey.Id);
            getAccName.add(idkey.name);
        }*/
        /*System.debug(getAccId);
        System.debug(getAccName);*/
        List<Id> getConId = new List<Id>();
        List<String> getConName = new List<String>();
        Map<Id,Contact> ConMap = new Map<Id,Contact>([SELECT Id, LastName FROM Contact]);
         /*for(Contact idKey : ConMap.values()){
            getConId.add(idKey.Id);
            getConName.add(idkey.Lastname);
        }*/
        for(Account a : AccMap.values()){
            for(Contact c : ConMap.values()){
                if(a.name == c.Lastname){
                    SameName.add('\n'+a.name);
                }
            }
        }
        return SameName;
    }
    public static void main()
    {
        for(integer i=0;i<GetData.getAccount().size();i++){
            System.debug(GetData.getAccount());
        }
    }    
}