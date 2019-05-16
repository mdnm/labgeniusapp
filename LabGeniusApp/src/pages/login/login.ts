import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { LoginAlunoPage } from '../login-aluno/login-aluno';
import { RegisterAlunoPage } from '../register-aluno/register-aluno';


/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage {

  constructor(public navCtrl: NavController) {
      
  }

  aluno(){
    this.navCtrl.push(LoginAlunoPage);
  }

  cadastrar(){
    this.navCtrl.push(RegisterAlunoPage);
  }
}
