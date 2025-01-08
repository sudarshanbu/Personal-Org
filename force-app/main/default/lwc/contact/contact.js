import { LightningElement, api } from 'lwc';
export default class Contact extends LightningElement {
    @api firstName;
    @api fName;
    @api lastName;
    @api lName;
    @api phoneNumber;
    @api phone;

    handleFirstName(event){
        this.firstName = event.target.value;
    }

    handleLastName(event){
        this.lastName = event.target.value;
    }

    handlePhoneNumber(event){
        this.phoneNumber = event.target.value;
    }

    handleResult(event){
        this.fName=firstName;
        this.lName=lastName;
        this.phone=phoneNumber;
    }

    
    handleClear(event){
        this.firstName = "";
        this.fName = "";
        this.lastName = "";
        this.lName = "";
        this.phoneNumber = "";
        this.phone = "";
    }

    close() {
        this.dispatchEvent(
            new CustomEvent("close", {
                detail: {}
            }));


    }
}