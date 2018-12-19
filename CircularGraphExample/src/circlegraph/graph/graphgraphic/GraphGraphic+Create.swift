import UIKit
import Chaplin
import With
/**
 * Create
 */
extension GraphGraphic {
   /**
    * Background
    */
   func createBackgroundGraphic() -> UIView{
      return with(.init(frame: self.frame)) { bgView in
         self.addSubview(bgView)
         with(CAShapeLayer()) { circleLayer in
            let circleCenter:CGPoint = .init(x: frame.width/2, y: frame.height/2)
            let radius = frame.height/2
            CircleUtil.drawCircle(with: circleLayer, circle:(circleCenter,radius), style:(.clear,self.style.back.color,self.style.back.strokeWidth), progress: 1)
            bgView.layer.addSublayer(circleLayer)
         }
      }
   }
   /**
    * Foreground
    */
   func createForgroundGraphid() -> UIView{
      return with(.init(frame: frame)){ fgCircle in
         addSubview(fgCircle)
         let circleCenter = CGPoint.init(x: frame.width/2, y: frame.height/2)
         let radius = frame.height/2
         let circleLayer = with(CAShapeLayer())  { circleLayer in
            fgCircle.layer.addSublayer(circleLayer)
            CircleUtil.drawCircle(with: circleLayer, circle:(circleCenter,radius), style:(.clear,.green,6), progress: 0)
         }
         /*Animation*/
         let animator = TimeAnimator(duration:0.3)
         animator.tick = {
            let progress:CGFloat = TimeAnimator.interpolate(from: 0, to: 0.75, fraction: animator.progress)
            
            CircleUtil.drawCircle(with: circleLayer, circle:(circleCenter,radius), style:(.clear,self.style.front.color,self.style.front.strokeWidth), progress: progress)
         }
         animator.start()
      }
   }
}
