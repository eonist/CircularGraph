import UIKit
import Spatial

class GraphComponent:UIView{
   lazy var remainingDataLabel:UILabel = createRemainingDataLabel()
   lazy var remainingTextLabel:UILabel = createRemainingTextLabel()
   lazy var graphGraphic:GraphGraphic = createGraphGraphic()
   /*Data*/
   var availableData:Double//TODO: ⚠️️ group these
   var usedData:Double
   /*Init*/
   init(availableData:Double, usedData:Double, frame:CGRect){
      self.availableData = availableData
      self.usedData = usedData
      super.init(frame: frame)
      _ = remainingDataLabel
      _ = remainingTextLabel
      _ = graphGraphic
      //self.backgroundColor = .orange /*Debug*/
      //self.layer.borderColor = UIColor.orange.cgColor /*Debug*/
      //self.layer.borderWidth = 1 /*Debug*/
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}

extension GraphComponent {
   /**
    * Returns a square that fits inside a circle
    * PARAM: circleCenter - center of circle
    * PARAM: radius - radius of circle
    */
   static func squareInCircle(circleCenter:CGPoint, radius:CGFloat) -> CGRect{
      let side = sqrt(radius * radius * 2) /*calc side length of square*/
      let half = side * 0.5/* position offset*/
      return .init(x: circleCenter.x - half, y: circleCenter.y - half, width: side, height: side)
   }
}
