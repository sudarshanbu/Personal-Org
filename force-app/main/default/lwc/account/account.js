import { LightningElement, api } from 'lwc';
export default class Account extends LightningElement {
    @api accountName;
    @api accName;

    handleAccountName(event){
        this.accountName = event.target.value;
    }

    handleResult(event){
        this.accName=accountName;
    }

    handleClear(event){
        this.accName = "";
        this.accountName = "";
    }

    close() {
        this.dispatchEvent(
            new CustomEvent("close", {
                detail: {}
            }));


    }
}