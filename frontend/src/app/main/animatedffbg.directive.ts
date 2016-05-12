import { Directive, ElementRef, OnInit } from "@angular/core"

@Directive({
  selector: '[animated-ff-bg]',
  host: {
    '(mousemove)': 'onMouseMove($event)',
    '(deviceorientation)': 'onDeviceOrientationChange($event)'
  }
})

export class AnimatedFFBg implements OnInit {
  public bg: any;

  constructor(
      public element: ElementRef
  ){ }

  ngOnInit(){
    this.bg = this.element.nativeElement.querySelector("div.bg-image");
  }

  private _animate_on_move(e){
    let offsetXp = (1 - (document.body.clientWidth - e.clientX)/document.body.clientWidth);
    let offsetYp = (1 - (document.body.clientHeight - e.clientY)/document.body.clientHeight);

    let offsetX = -(offsetXp * 9 - 4.5).toFixed(2);
    let offsetY = -(offsetYp * 9 - 4.5).toFixed(2);

    this.bg.setAttribute('style', "transform: translate3d(" + offsetX + "%, " + offsetY + "%, 0)");
  }

  private _animate_on_move_mobile(eventData){
    let yTilt = ( ( 1 - ( -eventData.beta + 90) / 180 ) * 9 - 4.5).toFixed(2);
    let xTilt = ( ( 1 - ( -eventData.gamma + 90) / 180 ) * 9 - 4.5).toFixed(2);

    this.bg.setAttribute('style', 'transform: translate3d(' + xTilt + '%, ' + yTilt + '%, 0)');
  }

  onMouseMove(e){
    window.requestAnimationFrame(
        () => {
          this._animate_on_move(e);
        }
    )
  }

  onDeviceOrientationChange(e){
    window.requestAnimationFrame(
        () => {
          this._animate_on_move_mobile(e);
        }
    )
  }
}