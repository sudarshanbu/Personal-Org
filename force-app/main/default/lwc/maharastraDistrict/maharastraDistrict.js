import { LightningElement, api } from 'lwc';
export default class MaharastraDistrict extends LightningElement {
    @api maharastra = ['Mumbai', 'Nagpur', 'Pune', 'Nasic'];

     close() {
        this.dispatchEvent(
            new CustomEvent("close", {
                detail: {}
            }));
    }
}