import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { ClassesPage } from './classes';

@NgModule({
  declarations: [
    ClassesPage,
  ],
  imports: [
    IonicPageModule.forChild(ClassesPage),
  ],
})
export class ClassesPageModule {}
