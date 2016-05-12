import { Directive, ElementRef, OnInit } from "@angular/core"
// import Snap from "snapsvg"

@Directive({
  selector: '[animated-logo]'
})

export class AnimatedLogo implements OnInit {
  private s_element: any;
  private parts: any;
  private i: number = 0;

  constructor(
      public element: ElementRef
  ){ }

  ngOnInit(){
    this.s_element = Snap(this.element.nativeElement);
    this.parts = this.s_element.selectAll("path");

    this._draw();

  }

  private _draw(){
    this._draw_part(this.parts[this.i]);
    this.i += 1;
    if(this.i < this.parts.length)
      setTimeout(
          () => this._draw()
      , 240);
  }

  private _draw_part(part){
    let v = 0;
    let animation = setInterval(
      ()=> {
        let l = part.attr("data-length");
        if (l == null) {
          l = part.getTotalLength();
          part.attr("data-length", l)
        }
        if (typeof(l) == "undefined")
          l = 1000;
        part.attr({
          strokeDasharray: (v * l) + "," + l
        });
        part.attr({
          display: "block"
        });
        v += 3/l;
        if(v >= l)
          clearInterval(animation);
      }, 20)
  }
}