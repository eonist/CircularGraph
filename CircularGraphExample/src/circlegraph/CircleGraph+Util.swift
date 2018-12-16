import UIKit

extension CircleGraph {
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
