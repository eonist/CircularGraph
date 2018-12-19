import UIKit
import Chaplin

extension Graph{
   /**
    * Intro
    */
   open func intro(destination:CGFloat = 1){
      animate(progress: (currentProgress,destination))
   }
   /**
    * Outro
    */
   open func outro(){
      animate(progress: (currentProgress,0))
   }
   /**
    * set progress
    */
//   func setProgress(progress:Progress){
////      Swift.print("didSet called: \(progress)")
//      animate(progress:progress)
//   }
   /**
    * Animate
    */
   open func animate(progress:(from:CGFloat,to:CGFloat)) {
      Swift.print("animate progress\(progress)")
      let animator = TimeAnimator(duration:0.3)
      animator.tick = {
         let progress:CGFloat = TimeAnimator.interpolate(from: progress.from, to: progress.to, fraction: animator.progress)
         Swift.print("progress:  \(progress)")
         self.setProgress(progress:progress)
      }
      animator.start()
   }
   /**
    * sets the progress
    */
   open func setProgress(progress:CGFloat){
      let circleCenter = CGPoint.init(x: frame.width/2, y: frame.height/2)
      let radius = frame.height/2
      GraphUtil.drawCircle(with: self.forground, circle:(circleCenter,radius), style:(.clear,self.style.front.color,self.style.front.strokeWidth), progress: progress)
   }
}
