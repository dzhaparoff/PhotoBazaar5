import { Component, OnInit } from '@angular/core';
import { AnimatedFFBg } from './main/animatedffbg.directive'
import { AnimatedLogo } from './main/animatedlogo.directive'

@Component({
  selector: 'phb-app',
  templateUrl: '/ng/templates/main.tmpl.html',
  directives: [ AnimatedFFBg, AnimatedLogo ]
})

export class AppComponent implements OnInit {
  constructor(){ }
  ngOnInit(){
    // document.writeLogo('#LogoSvg');
  }
}
