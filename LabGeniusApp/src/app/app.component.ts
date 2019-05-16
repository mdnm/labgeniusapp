import { Component } from '@angular/core';
import { Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { TabsPage } from '../pages/tabs/tabs';
import { LoginPage } from '../pages/login/login';

@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  rootPage:any;

  constructor(platform: Platform, statusBar: StatusBar, splashScreen: SplashScreen) {
    platform.ready().then(() => {
      if(localStorage.getItem("usuario") == null){
        this.rootPage = LoginPage;
      } else {
        this.rootPage = TabsPage;
      }
      statusBar.styleDefault();
      splashScreen.hide();
    });
  }

  public setLoginPage(){
    this.rootPage = LoginPage;
  }
}
