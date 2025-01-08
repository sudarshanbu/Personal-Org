import { LightningElement, api} from 'lwc';
export default class Districts extends LightningElement {
@api karnataka = ['Bengaluru','Mysore', 'Shivamogga', 'Chikkamagaluru'];

 close() {
        this.dispatchEvent(
            new CustomEvent("close", {
                detail: {}
            }));
    }
}