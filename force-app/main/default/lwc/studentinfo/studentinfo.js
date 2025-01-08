import { LightningElement } from 'lwc';
export default class Studentinfo extends LightningElement {
     studentName = '';
     studentAge = '';
     studentPhone = '';
        handleStudentNameChange(event) {
        this.studentName = event.target.value;
    }
         handleStudentAgeChange(event) {
        this.studentAge = event.target.value;
    }
         handleStudentPhoneChange(event) {
        this.studentPhone = event.target.value;
    }
 
}