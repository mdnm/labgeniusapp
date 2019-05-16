import { Component, ViewChild } from '@angular/core';
import { NavController, AlertController } from 'ionic-angular';
import { LoginAlunoPage } from '../login-aluno/login-aluno';
import { Http, Headers, RequestOptions } from '@angular/http';
import { LoadingController } from 'ionic-angular';
import 'rxjs/add/operator/map';

/**
 * Generated class for the RegisterAlunoPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-register-aluno',
  templateUrl: 'register-aluno.html',
})
export class RegisterAlunoPage { 
  @ViewChild("usuario") usuario;
  @ViewChild("senha") senha;
  @ViewChild("senhaC") senhaC;
  @ViewChild("nome") nome;
  @ViewChild("sobrenome") sobrenome;
  @ViewChild("email") email;
  constructor(public navCtrl: NavController, public alertCtrl: AlertController,
    private http: Http, public loading: LoadingController) {
  }
  
  register(){
    if(this.usuario.value==""){
      let alert = this.alertCtrl.create({
        title:"ATENÇÃO",
        subTitle:"Usuário está vazio",
        buttons:['OK']
      });
      alert.present();
    } else if (this.senha.value==""){
      let alert = this.alertCtrl.create({
        title:"ATENÇÃO",
        subTitle:"Senha está vazia",
        buttons:['OK']
      });
      alert.present();
    } else if (this.senha.value<8){
      let alert = this.alertCtrl.create({
        title:"ATENÇÃO",
        subTitle:"Senha menor que 8 dígitos",
        buttons:['OK']
      });
      alert.present();
    } else if (this.senhaC.value==""){
      let alert = this.alertCtrl.create({
        title:"ATENÇÃO",
        subTitle:"Senha está vazia",
        buttons:['OK']
      });
      alert.present();
    } else if (this.senhaC.value != this.senha.value){
      let alert = this.alertCtrl.create({
        title:"ATENÇÃO",
        subTitle:"Senhas não batem",
        buttons:['OK']
      });
      alert.present();
    } else if(this.nome.value==""){
      let alert = this.alertCtrl.create({
        title:"ATENÇÃO",
        subTitle:"Nome está vazio",
        buttons:['OK']
      });
      alert.present();
    } else if(this.sobrenome.value==""){
      let alert = this.alertCtrl.create({
        title:"ATENÇÃO",
        subTitle:"Sobreome está vazio",
        buttons:['OK']
      });
      alert.present();
    } else if (this.email.value==""){
      let alert = this.alertCtrl.create({
        title:"ATENÇÃO",
        subTitle:"Email está vazio",
        buttons:['OK']
      });
      alert.present();
    } else {
      var headers = new Headers();
      headers.append("Accept",'application/json');
      headers.append('Content-Type','application/json');
      let options = new RequestOptions({headers: headers});
      let data = {
        username: this.usuario.value,
        password: this.senha.value,
        name: this.nome.value,
        lastname: this.sobrenome.value,
        email: this.email.value
      };
      let loader = this.loading.create({
        content: 'Processando, aguarde...'
      });
      loader.present().then(() => {
        this.http.post('http://localhost/php/registerAluno.php',data,options)
        .map(res => res.json())
        .subscribe(res => {
          loader.dismiss()
          if(res=="Registrado com sucesso"){
            let alert = this.alertCtrl.create({
              title:"PARABÉNS",
              subTitle:(res),
              buttons:['OK']
            });
            alert.present();
            this.navCtrl.push(LoginAlunoPage);
          } else {
            let alert = this.alertCtrl.create({
              title:"ERRO",
              subTitle:(res),
              buttons:['OK']
            });
            alert.present();
          }
        });
      });
    }
  }

}
