import UIKit

/**
 * CircleUtil
 */
class GraphUtil{
   typealias Style = (fillColor:UIColor, strokeColor:UIColor, strokeWidth:CGFloat)
   typealias Circle = (center:CGPoint, radius:CGFloat)
   /**
    * Draws circle
    * PARAM: progress: 0-1
    */
   static func drawCircle(with layer:CAShapeLayer, circle:Circle, style:Style, progress:CGFloat){
      let circlePath = UIBezierPath(arcCenter: CGPoint(x: circle.center.x, y: circle.center.y), radius:circle.radius, startAngle: CGFloat(Double.pi * -0.5), endAngle: CGFloat(Double.pi * 1.5), clockwise: true)/*The path should be the entire circle, for the strokeEnd and strokeStart to work*/
      layer.path = circlePath.cgPath/*Setup the CAShapeLayer with the path, colors, and line width*/
      layer.fillColor = style.fillColor.cgColor
      layer.strokeColor = style.strokeColor.cgColor
      layer.lineWidth = style.strokeWidth
      layer.lineCap = .round
      layer.strokeEnd = progress/*Sets progress of the stroke between predefined start and predefined end*/
   }
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
