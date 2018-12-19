import UIKit
import Spatial
import With
/**
 * Create
 */
extension Graph{
   /**
    * Create graph graphic
    */
   func createGraph(style:Graph.GraphStyle,progress:CGFloat) -> CAShapeLayer{
      let circleCenter = CGPoint.init(x: frame.width/2, y: frame.height/2)
      let radius = frame.height/2
      return with(CAShapeLayer()) { circleLayer in
         self.layer.addSublayer(circleLayer)
         GraphUtil.drawCircle(with: circleLayer, circle:(circleCenter,radius), style:(.clear,style.color,style.strokeWidth), progress: progress)
      }
   }
}
/**
 * Creates GraphGraphic (overridable)
 * NOTE: we use the bounds because frame is not always (x:0,y:0)
 */
//   @objc func createGraphGraphic() -> GraphGraphic{
//      Swift.print("CircleGraph.createGraphGraphic: \(self.bounds)")
////      Swift.print("self.frame:  \(self.frame)")
//
//      return with(.init(style:GraphGraphic.defaultStyle,frame:self.bounds)){
//         addSubview($0)
////         $0.activateSize{ view in
////            return Constraint.size(view, to: self)
////         }
//      }
//   }
