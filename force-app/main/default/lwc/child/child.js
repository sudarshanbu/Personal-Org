import { LightningElement, api } from 'lwc';

export default class Child extends LightningElement {
  @api studentName
  @api trainerName
  @api courseName
  @api phoneNumber

  @api getStudentName(event) {
    this.studentName = event.target.value;
  }

  @api getTrainerName(event) {
    this.trainerName = event.target.value;
  }

  @api getCourseName(event) {
    this.courseName = event.target.value;
  }

  @api getPhoneNumber(event) {
    this.phoneNumber = event.target.value;
  }
}