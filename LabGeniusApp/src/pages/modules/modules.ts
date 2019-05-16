import { Component, OnInit } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { ClassesPage } from '../classes/classes';
import { ServiceProvider } from '../../providers/service/service';
import { VideoAulaPage } from '../video-aula/video-aula';

/**
 * Generated class for the ModulesPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */


@Component({
  selector: 'page-modules',
  templateUrl: 'modules.html',
})
export class ModulesPage implements OnInit{

  id_curso: string = "";
  modulos : any[] = [{"id": "","name": ""}];
  modulos2 : any[] = [{"id": '',"name": ''}];
  aulas: any[] = [];
  aulas2: any[] = [];
  id_modulo: string = "";

  constructor(public navCtrl: NavController, public navParams: NavParams, public service: ServiceProvider) {
  }

  ngOnInit() {
    this.id_curso = this.navParams.get('id_curso');
    this.modulos2 = this.navParams.get('modulos');
    this.getModulos();
    this.getAulas();
  }

  getModulos(){
    let data = {
      id_curso: this.id_curso
    }
    this.service.getModulo(data).subscribe(
      data => {
        if(data != "Nenhum módulo encontrado"){
          this.modulos = data;
        }
      },
      err => console.log(err),
    );
  }

  getAulas(){
    this.modulos2.forEach((item, index) => {
      this.id_modulo = this.modulos2[index].id;
      let data = {
        id_modulo: this.id_modulo
      }
      this.service.getAula(data).subscribe(
        data => {
          this.aulas2 = data;
          this.aulas.push(this.aulas2);
        },
        err => console.log(err),
      ); 
    })
  }

  moduloClick(param){
    this.navCtrl.push(ClassesPage, {
      id_modulo: param
     });
  }

  aulaClick(param, moduloid){
    this.navCtrl.push(VideoAulaPage, {
      id_aula: param,
      id_modulo: moduloid
     });
  }

}
