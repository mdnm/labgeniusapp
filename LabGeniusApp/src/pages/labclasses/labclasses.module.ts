import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { LabclassesPage } from './labclasses';

@NgModule({
  declarations: [
    LabclassesPage,
  ],
  imports: [
    IonicPageModule.forChild(LabclassesPage),
  ],
})
export class LabclassesPageModule {}
