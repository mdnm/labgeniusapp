import { Component, OnInit } from '@angular/core';
import { NavController, AlertController } from 'ionic-angular';
import { Http, Headers, RequestOptions } from '@angular/http';
import { LoadingController } from 'ionic-angular';
import { LabclassesPage } from '../labclasses/labclasses';
import 'rxjs/add/operator/map';

import { ServiceProvider } from '../../providers/service/service';

@Component({
  selector: 'page-explore',
  templateUrl: 'explore.html',
})
export class ExplorePage implements OnInit {

  cursos : any[];
  Ocursos : any[];
  username: string;

  constructor(public navCtrl: NavController, public service: ServiceProvider, public alertCtrl: AlertController,
    private http: Http, public loading: LoadingController) {
  }

  ngOnInit() {
    this.username = localStorage.getItem("usuario").toString();
    this.getCursosOficiais();   
    this.getDados();
  }

  getDados(){
    let loader = this.loading.create({
      content: 'Carregando, aguarde...'
    });
    loader.present().then(() => {
      this.service.getDataCurso().subscribe(
        data => {
          if(data != "Não existem cursos disponíveis"){
            this.cursos = data;
          }
        },
        err => console.log(err),
        () => loader.dismiss()
      );
    });   
  }

  refresh(){
    window.location.reload();
  }

  ingressar(param){
    var headers = new Headers();
      headers.append("Accept",'application/json');
      headers.append('Content-Type','application/json');
      let options = new RequestOptions({headers: headers});
      let data = {
        usuario: this.username,
        id_curso: param
      };
      let loader = this.loading.create({
        content: 'Processando, aguarde...'
      });
      loader.present().then(() => {
        this.http.post('http://localhost/php/ingressarAluno.php',data,options)
        .map(res => res.json())
        .subscribe(res => {
          loader.dismiss()
          if(res=="Já está ingressado"){
            let alert = this.alertCtrl.create({
              title:"ERRO",
              subTitle:(res),
              buttons:['OK']
            });
            alert.present();
          }
          else if(res=="Parabéns você ingressou"){
            let alert = this.alertCtrl.create({
              title:"PARABÉNS",
              subTitle:(res),
              buttons:['OK']
            });
            alert.present();
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
  
  goToAulasOficiais(param){
    let data = {
      id_curso: param.id,
      titulo: param.titulo,
      color: param.color
    }
    this.navCtrl.push(LabclassesPage, {
      id_curso: data.id_curso,
      titulo: data.titulo,
      color: data.color
     });
  }

  getCursosOficiais(){
    let loader = this.loading.create({
      content: 'Carregando, aguarde...'
    });
    loader.present().then(() => {
      this.service.getCursoOficial().subscribe(
        data => {
          if(data != "Não existem cursos disponíveis"){
            this.Ocursos = data;
          }
        },
        err => console.log(err),
        () => loader.dismiss()
      );
    });   
  }

}
