import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { HttpClientModule } from '@angular/common/http';
import { HttpModule } from '@angular/http';
import { MyApp } from './app.component';


import { LoginPage } from '../pages/login/login';
import { LoginAlunoPage } from '../pages/login-aluno/login-aluno';
import { RegisterAlunoPage } from '../pages/register-aluno/register-aluno';
import { ModulesPage } from '../pages/modules/modules';
import { ClassesPage } from '../pages/classes/classes';
import { LabclassesPage } from '../pages/labclasses/labclasses';
import { Labclasses1Page } from '../pages/labclasses1/labclasses1';
import { Labclasses2Page } from '../pages/labclasses2/labclasses2';
import { VideoAulaPage } from '../pages/video-aula/video-aula';
import { ExplorePage } from '../pages/explore/explore';
import { ProfilePage } from '../pages/profile/profile';
import { AboutPage } from '../pages/about/about';
import { ContactPage } from '../pages/contact/contact';
import { HomePage } from '../pages/home/home';
import { TabsPage } from '../pages/tabs/tabs';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { ServiceProvider } from '../providers/service/service';

@NgModule({
  declarations: [
    MyApp,
    LoginPage,
    LoginAlunoPage,
    RegisterAlunoPage,
    ModulesPage,
    ClassesPage,
    LabclassesPage,
    Labclasses1Page,
    Labclasses2Page,
    VideoAulaPage,
    ExplorePage,
    ProfilePage,
    AboutPage,
    ContactPage,
    HomePage,
    TabsPage,
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    HttpModule,
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    LoginPage,
    LoginAlunoPage,
    RegisterAlunoPage,
    ModulesPage,
    ClassesPage,
    LabclassesPage,
    Labclasses1Page,
    Labclasses2Page,
    VideoAulaPage,
    ExplorePage,
    ProfilePage,
    AboutPage,
    ContactPage,
    HomePage,
    TabsPage,
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    ServiceProvider,
  ]
})
export class AppModule {}
