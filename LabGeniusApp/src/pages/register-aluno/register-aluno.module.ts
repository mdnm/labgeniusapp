import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { RegisterAlunoPage } from './register-aluno';

@NgModule({
  declarations: [
    RegisterAlunoPage,
  ],
  imports: [
    IonicPageModule.forChild(RegisterAlunoPage),
  ],
})
export class RegisterAlunoPageModule {}
