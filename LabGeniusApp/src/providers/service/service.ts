//import { HttpClient } from '@angular/common/http';
import { Http, Headers, Response, RequestOptions } from '@angular/http';
import { Injectable } from '@angular/core';
import 'rxjs/add/operator/map';
import { Observable } from 'rxjs/Observable';


/*
  Generated class for the ServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class ServiceProvider {

  constructor(public http: Http) {
    
  }

  getDataCurso(){
    return this.http.get('http://localhost/php/recuperaCurso.php')
    .map(res => res.json());
  }

  getCursoOficial(){
    return this.http.get('http://localhost/php/recuperaCursoOficial.php')
    .map(res => res.json());
  }

  getAulasOficiais(param){
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/recuperaAulasOficiais.php',param,options)
    .map(
      (res:Response) => {return res.json();}
    );
  }

  getConteudoAulas1Oficiais(param){
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/recuperaConteudoAula1Ofc.php',param,options)
    .map(
      (res:Response) => {return res.json();}
    );
  }

  getConteudoAulas2Oficiais(param){
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/recuperaConteudoAula2Ofc.php',param,options)
    .map(
      (res:Response) => {return res.json();}
    );
  }

  getCursoIngressado(param){
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/recuperaCursoIngressado.php',param,options)
    .map(
      (res:Response) => {return res.json();}
    );
  }

  getModulo(param){
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/recuperaModulo.php',param,options)
    .map((res:Response) => {return res.json();});
  }

  getAula(param){
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/recuperaAula.php',param,options)
    .map(
      (res:Response) => {return res.json();}
    );
  }

  getVideoUrl(param){
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/verAula.php',param,options)
    .map(
      (res:Response) => {return res.json();}
    );
  }
 
  getDataAluno(param) {
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/recuperaAluno.php',param,options)
    .map(
      (res:Response) => {return res.json();}
    );
  }

  deletaAluno(param) {
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/deletaAluno.php',param,options)
    .map(res => res.json());
  }

  editarAluno(param) {
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/editarAluno.php',param,options)
    .map(res => res.json());
  }

  ingressarAluno(param) {
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/ingressarAluno.php',param,options)
    .map(
      (res:Response) => {return res.json();}
    );
  }

  sairCurso(param) {
    var headers = new Headers();
    headers.append("Accept",'application/json');
    headers.append('Content-Type','application/json');
    let options = new RequestOptions({headers: headers});
    return this.http.post('http://localhost/php/sairCurso.php',param,options)
    .map(
      (res:Response) => {return res.json();}
    );
  }
}

