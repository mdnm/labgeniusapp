import { Component, OnInit } from '@angular/core';
import { NavController, AlertController } from 'ionic-angular';
import { ServiceProvider } from '../../providers/service/service';
import { Http } from '@angular/http';
import { LoadingController } from 'ionic-angular';
import 'rxjs/add/operator/map';
import { ActionSheetController } from 'ionic-angular';


@Component({
  selector: 'page-profile',
  templateUrl: 'profile.html',
})
export class ProfilePage implements OnInit {

  public aluno : any = {};
  username: string;

  constructor(public navCtrl: NavController, public service: ServiceProvider,
     public http: Http, public alertCtrl: AlertController, public actionSheetCtrl: ActionSheetController
     , public loading: LoadingController) {
      
  }

  ngOnInit() {
    this.username = localStorage.getItem("usuario").toString();
    this.getDataAluno();
  } 

  getDataAluno() {
    let param = {
      usuario: this.username
    }
    let loader = this.loading.create({
      content: 'Carregando, aguarde...'
    });
    loader.present().then(() => {
      this.service.getDataAluno(param).subscribe(
        data => this.aluno = data,
        err => console.log(err),
        () => loader.dismiss()
      );
    });
  }

  presentActionSheet() {
    const actionSheet = this.actionSheetCtrl.create({
      title: 'Opções',
      buttons: [
        {
          text: 'Deletar Conta',
          role: 'destructive',
          handler: () => {
            this.delete();
          }
        },{ 
          text: 'Editar Conta',
          handler: () => {
            this.editar(this.aluno);
          }
        },{
          text: 'Cancelar',
          role: 'cancel',
          handler: () => {
          }
        }
      ]
    });
    actionSheet.present();
  }

  delete(){
    let alert = this.alertCtrl.create({
      title:"CONFIRMAR",
      subTitle:("Deseja mesmo deletar?"),
      buttons:[
        {
          text: 'Cancelar',
          role: 'cancel',
          handler: () => {}
        },
        {
          text: 'Deletar',
          handler: () => {
            let param = {
              username: this.username
            }
            this.service.deletaAluno(param).subscribe(res => {
                  if(res=="Deletado com sucesso"){
                    let alert = this.alertCtrl.create({
                      title:"VOLTE SEMPRE",
                      subTitle:(res),
                      buttons:['OK']
                    });
                    alert.present();
                    localStorage.clear();
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

  editar(param){
    let prompt = this.alertCtrl.create({
      title: 'Editar Perfil',
      inputs: [
        {
          name: 'nome',
          placeholder: 'Nome',
          value:param.nome
        },
        {
          name: 'sobrenome',
          placeholder: 'Sobrenome',
          value:param.sobrenome
        },
        {
          name: 'email',
          placeholder: 'Email',
          value:param.email
        },
      ],
      buttons: [
        {
          text: 'Cancelar',
          handler: data => {}
        },
        {
          text: 'Salvar',
          handler: data => {
            let params:any={
                  username: this.username,
                  nome: data.nome,
                  sobrenome: data.sobrenome,
                  email: data.email
            }
            this.service.editarAluno(params)
            .subscribe(
                  data=>{
                  this.getDataAluno();
                        },
                  err=>console.log(err)
            );
          }
        }
      ]
    });
    prompt.present();
  }

  logout(){
    let alert = this.alertCtrl.create({
      title:"CONFIRMAR",
      subTitle:("Deseja mesmo sair?"),
      buttons:[
        {
          text: 'Cancelar',
          role: 'cancel',
          handler: () => {}
        },
        {
          text: 'Sair',
          handler: () => {
            localStorage.clear();
            window.location.reload();
          }
        }
      ]
    });
    alert.present();
  }

}
