import { LightningElement } from 'lwc';
export default class PCounter extends LightningElement {
    numbers=0;
   handleNumber(event){
       this.numbers=event.target.value;
   } 

   handleCount(){
       this.template.querySelector('c-c-counter').handleCountChild();
   }
   
}