import { Component, OnInit } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { ServiceProvider } from '../../providers/service/service';
import { Labclasses1Page } from '../labclasses1/labclasses1';
import { Labclasses2Page } from '../labclasses2/labclasses2';

/**
 * Generated class for the LabclassesPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */


@Component({
  selector: 'page-labclasses',
  templateUrl: 'labclasses.html',
})
export class LabclassesPage implements OnInit {

  id_curso: string = "";
  cursoTitulo: string = "";
  color: string = "";
  aulas: any[] = [];

  constructor(public navCtrl: NavController, public navParams: NavParams, public service: ServiceProvider) {
  }

  ngOnInit(){
    this.id_curso = this.navParams.get('id_curso');
    this.cursoTitulo = this.navParams.get('titulo');
    this.color = this.navParams.get('color');
    this.getAulasOficiais();
  }

  getAulasOficiais(){
    let data = {
      id_curso: this.id_curso
    }
    this.service.getAulasOficiais(data).subscribe(
        data => this.aulas = data,
        err => console.log(err)
    );  
  }

  aulaClick(param){
    let data = {
      id_aula: param.id,
      type: param.type
    }
    if(param.type == 1) {
      this.navCtrl.push(Labclasses1Page, {
        id_aula: data.id_aula,
        type: data.type
       });
    } else if(param.type == 2){
      this.navCtrl.push(Labclasses2Page, {
        id_aula: data.id_aula,
        type: data.type
       });
    }
  }

}
