import { Component, OnInit } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { ServiceProvider } from '../../providers/service/service';

/**
 * Generated class for the Labclasses1Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */


@Component({
  selector: 'page-labclasses1',
  templateUrl: 'labclasses1.html',
})
export class Labclasses1Page implements OnInit{

  id_aula: string = "";
  conteudo: any = {};

  constructor(public navCtrl: NavController, public navParams: NavParams, public service: ServiceProvider) {
  }

  ngOnInit(){
    this.id_aula = this.navParams.get('id_aula');
    this.getConteudo();
  }

  getConteudo(){
    let data = {
      id_aula: this.id_aula
    }
    this.service.getConteudoAulas1Oficiais(data).subscribe(
      data => this.conteudo = data,
      err => console.log(err),
      () => console.log(this.conteudo)
    ); 
  }

}
