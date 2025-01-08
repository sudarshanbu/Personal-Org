import { LightningElement } from 'lwc';
 
export default class calculator extends LightningElement {
   
    result = 0;
    pamount=0;
    ipercent=0;
    years=0;
    si=0;
    a=0;
 
    handleChange(event) {
        this.isInterest = event.target.checked;
        this.isSimple = !this.isInterest;
    }
 
 
    handlePrincipleChange(event){
        this.pamount = parseFloat(event.target.value);
    }
 
    handleRateChange(event){
        this.ipercent = parseFloat(event.target.value);
    }
 
    handleTimeChange(event){
        this.years = parseFloat(event.target.value);
    }
 
    interest() {
        this.si = parseFloat(this.pamount*this.ipercent*this.years)*0.01;
        this.a = parseFloat(this.si+this.pamount);
    }
 
    handlecancel(){
        this.pamount=0;
        this.ipercent=0;
        this.years=0;
        this.si=0;
        this.a=0;
    }
 
}