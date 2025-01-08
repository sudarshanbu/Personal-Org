import { LightningElement, api } from 'lwc';
import getAccountDetails from '@salesforce/apex/AccountController.getAccountDetails';
import createAccount from '@salesforce/apex/AccountController.createAccount';
 
export default class AccountParent extends LightningElement {
    @api accountId;
    @api phoneNumber;
    @api accountName;
 
    handleNameChange(event) {
        this.accountName = event.target.value;
    }
 
    handleFind(){
        getAccountDetails({ name: this.accountName })
            .then(result => {
                if(result) {
                    this.accountId = result.Id;
                    this.phoneNumber = result.Phone;
                }
            })
            .catch(error => {
                console.error('Error retrieving account details', error);
            });
    }
    
    handleCreate(){
        createAccount({ name: this.accountName })
                        .then(result => {
                            this.accountId = result.Id;
                            this.phoneNumber = result.Phone;
                        })
                        .catch(error => {
                            console.error('Error creating account', error);
                        });
                
            
    }
 
 
    handleNumber(){
        
    }
 
    handleName(){
 
    }
 
    handleSum(){
 
    }
 
}