public class ContactManagement {
	private list<contact> li;
    private set<id> s;
    private map<id,contact> m;
    private list<contact> newList;
    private contact x;
    Private id y;
    public ContactManagement()
    {
		li=new list<contact>();  //empty list
        s=new set<id>();
        m= new map<id,contact>();
    }
    public void addContact(contact cont){
        li.add(cont);
        s.add(cont.Id);
        m.put(cont.Id,cont);
    }
    public void updateContact(contact cont){
        for(contact c : li){
            if(c.Id==cont.Id){
               c.LastName='Sri';  
            }
        }
        update li;
    }
    public list<contact> getContactbyId(contact cont){
        if(m.containsKey(cont.Id)){
            newList.add(m.get(cont.Id)); //get value of that key
        }
        update newList;
        return newList;
    }
  /* public static void a(){
        map<integer,string> m=new map<integer,string>();
            //system.debug(m.values()); print all values
            //system.debug(m.get(2));  print value of particular key
    }    */
    public void deleteContact(contact cont){
        for(contact i : li){
            if(i.id==cont.Id){
             //li.remove(li.indexOf(i)); we cant delete a element of collection when it is iterating
               x=i;
            }
        }
        li.remove(li.indexOf(x)); //deleting the element
        for(id j : s){
            if(j==cont.Id){ //iterating the set
                y=j;
            }
        }
        s.remove(y); //removing element from set
        m.remove(cont.Id); //removing element from map
    }   

    public list<contact> retrieveAll(){
        return li;
    }
}