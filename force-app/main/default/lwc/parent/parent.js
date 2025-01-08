import { LightningElement } from 'lwc';

export default class Parent extends LightningElement {
  sName(event){
    this.template.querySelector('c-child').getStudentName(event);
  }
  tName(event){
    this.template.querySelector('c-child').getTrainerName(event);
  }
  cName(event){
    this.template.querySelector('c-child').getCourseName(event);
  }
  phone(event){
    this.template.querySelector('c-child').getPhoneNumber(event);
  }
}