import { LightningElement } from 'lwc';

export default class states extends LightningElement {
    iskarnataka=false;
    isAndra = false;
    isMaharastra = false;

 
    handleKarnataka(event) {
    this.template.querySelector('c-districts');
    this.iskarnataka = true;
    this.isAndra = false;
    this.isMaharastra = false;
        }
    handleAndra(event) {
    this.template.querySelector('c-andra-districts');
    this.iskarnataka = false;
    this.isAndra = true;
    this.isMaharastra = false;
        }

    handleMaharastra(event){
    this.template.querySelector('c-maharastra-district');
    this.iskarnataka = false;
    this.isAndra = false;
    this.isMaharastra = true;
    }

     closeHandleKarnataka() {
        this.iskarnataka = false;
    }

    closeHandleAndra() {
        this.isAndra = false;
    }

    closeHandleMaharastra() {
        this.isMaharastra = false;
    }

}