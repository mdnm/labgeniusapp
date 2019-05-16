import { Component, OnInit } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { ServiceProvider } from '../../providers/service/service';
import { DomSanitizer } from '@angular/platform-browser';
import { LoadingController } from 'ionic-angular';


@Component({
  selector: 'page-video-aula',
  templateUrl: 'video-aula.html',
})
export class VideoAulaPage implements OnInit {

  id_aula: string = "";
  id_modulo: string = "";
  aula_link : any = {};
  aulas : any[] = [];

  constructor(public navCtrl: NavController, public navParams: NavParams, public service: ServiceProvider, public sanitizer: DomSanitizer, public loading: LoadingController) {
  }

  ngOnInit(){
    this.id_aula = this.navParams.get('id_aula');
    this.id_modulo = this.navParams.get('id_modulo');
    this.getAulas();
    this.getUrl();
  }


  getUrl(){
    let data = {
      id_aula: this.id_aula
    }
    let loader = this.loading.create({
      content: 'Carregando, aguarde...'
    });
    loader.present().then(() => {
      this.service.getVideoUrl(data).subscribe(
        data => this.aula_link = data,
        err => console.log(err),
        () => loader.dismiss()
      ); 
    });
  }

  getAulas(){
    let data = {
      id_modulo: this.id_modulo
    }
    this.service.getAula(data).subscribe(
      data => this.aulas = data,
      err => console.log(err),
    ); 
  }

}
