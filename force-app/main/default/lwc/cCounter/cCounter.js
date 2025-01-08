import { LightningElement,api } from 'lwc';
export default class CCounter extends LightningElement {
// @api count;
 @api inputNum;
@api handleCountChild(){
       this.inputNum = parseInt(this.inputNum) + 10;
   }
}