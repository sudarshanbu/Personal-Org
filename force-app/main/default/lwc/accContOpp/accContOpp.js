import { LightningElement } from 'lwc';
export default class AccContOpp extends LightningElement {
    isAccount = false;
    isContact = false;
    handleAccount(event){
        this.template.querySelector('c-account');
        this.isAccount = true;
        this.isContact = false;
    }

     closeHandleAccount() {
        this.isAccount = false;
    }

     handleContact(event){
        this.template.querySelector('c-contact');
        this.isAccount = false;
        this.isContact = true;
    }

     closeHandleContact() {
        this.isContact = false;
    }
}