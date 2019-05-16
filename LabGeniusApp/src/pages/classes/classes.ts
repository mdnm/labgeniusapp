import { Component, OnInit } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { ServiceProvider } from '../../providers/service/service';
import { VideoAulaPage } from '../video-aula/video-aula';

/**
 * Generated class for the ClassesPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */


@Component({
  selector: 'page-classes',
  templateUrl: 'classes.html',
})
export class ClassesPage implements OnInit{ 

  id: string = "";
  aulas : any[] = [];

  constructor(public navCtrl: NavController, public navParams: NavParams, public service: ServiceProvider) {

  }

  ngOnInit(){
    this.id = this.navParams.get('id_modulo');
    this.getAulas();
  }

  getAulas(){
    let data = {
      id_modulo: this.id
    }
    console.log(data.id_modulo);
    this.service.getAula(data).subscribe(
      data => this.aulas = data,
      err => console.log(err),
    );
  }

  aulaClick(param){
    this.navCtrl.push(VideoAulaPage, {
      id_aula: param,
      id_modulo: this.id
     });
  }

}
