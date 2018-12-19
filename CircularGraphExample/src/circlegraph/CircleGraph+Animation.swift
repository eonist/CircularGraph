import UIKit
import Chaplin

extension CircleGraph{
   /**
    * Intro
    */
   func intro(){
      let circleCenter = CGPoint.init(x: frame.width/2, y: frame.height/2)
      let radius = frame.height/2
      let animator = TimeAnimator(duration:0.3)
      animator.tick = {
         let progress:CGFloat = TimeAnimator.interpolate(from: 0, to: 0.75, fraction: animator.progress)
         CircleUtil.drawCircle(with: self.fgCircle, circle:(circleCenter,radius), style:(.clear,self.style.front.color,self.style.front.strokeWidth), progress: progress)
      }
      animator.start()
   }
   /**
    * Outro
    */
   func outro(){
      
   }
}
