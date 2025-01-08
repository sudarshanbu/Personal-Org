import { LightningElement, api } from 'lwc';
export default class AndraDistricts extends LightningElement {
    @api andra = ['Eluru','Guntur', 'Nellore', 'Tirupathi'];

     close() {
        this.dispatchEvent(
            new CustomEvent("close", {
                detail: {}
            }));
    }
}