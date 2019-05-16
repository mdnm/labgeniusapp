import { Component, ViewChild } from '@angular/core';
import { NavController, AlertController } from 'ionic-angular';
import { TabsPage } from '../tabs/tabs';
import { RegisterAlunoPage } from '../register-aluno/register-aluno';
import { Http, Headers, RequestOptions } from '@angular/http';
import { LoadingController } from 'ionic-angular';
import 'rxjs/add/operator/map';

@Component({
  selector: 'page-login-aluno',
  templateUrl: 'login-aluno.html', 
})
export class LoginAlunoPage {
  @ViewChild("usuario") usuario;
  @ViewChild("senha") senha;
  constructor(public navCtrl: NavController, public alertCtrl: AlertController,
    private http: Http, public loading: LoadingController) {
  }

  signIn(){
    if(this.usuario.value==""){
      let alert = this.alertCtrl.create({
        title:"ATENÇÃO",
        subTitle:"Usuario está vazio",
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
    } else {
      var headers = new Headers();
      headers.append("Accept",'application/json');
      headers.append('Content-Type','application/json');
      let options = new RequestOptions({headers: headers});
      let data = {
        username: this.usuario.value,
        password: this.senha.value
      };
      let loader = this.loading.create({
        content: 'Processando, aguarde...'
      });
      loader.present().then(() => {
        this.http.post('http://localhost/php/loginAluno.php',data,options)
        .map(res => res.json())
        .subscribe(res => {
          loader.dismiss()
          if(res=="Login com sucesso"){
            localStorage.setItem("usuario",this.usuario.value);
            this.navCtrl.setRoot(TabsPage);
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

  signUp(){
    this.navCtrl.push(RegisterAlunoPage);
  }

}
