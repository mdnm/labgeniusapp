import { Component, OnInit } from '@angular/core';
import { NavController, AlertController } from 'ionic-angular';
import { ModulesPage } from '../modules/modules';
import { LoadingController } from 'ionic-angular';
import { ServiceProvider } from '../../providers/service/service';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage implements OnInit {

  username: string;
  cursos : any[];
  modulos : any[];
  id_curso: string;

  constructor(public navCtrl: NavController, public service: ServiceProvider, public alertCtrl: AlertController, public loading: LoadingController) {
  }

  ngOnInit() {
    this.username = localStorage.getItem("usuario").toString();
    this.getCursoIngressado();   
  }

  refresh(refresher){
    this.getCursoIngressado();
    refresher.complete();
  }

  getModulos(param){
    let data = {
      id_curso: param
    }
    let loader = this.loading.create({
      content: 'Carregando, aguarde...'
    });
    loader.present().then(() => {
      this.service.getModulo(data).subscribe(
        data => {
          if(data != "Nenhum módulo encontrado"){
            this.modulos = data;
          }
        },
        err => console.log(err),
        () => {
          loader.dismiss();
          this.navCtrl.push(ModulesPage, {
            id_curso: param,
            modulos: this.modulos
           });
        }
      );  
    }); 
  }

  sair(param){
    this.id_curso = param;
    let alert = this.alertCtrl.create({
      title:"CONFIRMAR",
      subTitle:("Deseja mesmo sair do curso?"),
      buttons:[
        {
          text: 'Cancelar',
          role: 'cancel',
          handler: () => {}
        },
        {
          text: 'Sair',
          handler: () => {
            let param = {
              usuario: this.username,
              id_curso: this.id_curso
            }
            this.service.sairCurso(param).subscribe(res => {
              if(res=="Saiu com sucesso"){
                let alert = this.alertCtrl.create({
                  title:"PARABÉNS",
                  subTitle:(res),
                  buttons:['OK']
                });
                alert.present();
                window.location.reload();
              } else {
                let alert = this.alertCtrl.create({
                  title:"ERRO",
                  subTitle:(res),
                  buttons:['OK']
                });
                alert.present();
              }
            });
          }
        }
      ]
    });
    alert.present();
  }


  getCursoIngressado(){
      let param = {
        usuario: this.username
      }  
      let loader = this.loading.create({
        content: 'Carregando, aguarde...'
      });
      loader.present().then(() => {
        this.service.getCursoIngressado(param).subscribe(
          data => {
            if(data != "Não está ingressado em nenhum curso"){
              this.cursos = data;
            }
          },
          err => console.log(err),
          () => loader.dismiss()
        );  
      });   
  }
  

}
