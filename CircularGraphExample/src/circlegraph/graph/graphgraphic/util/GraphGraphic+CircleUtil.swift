import UIKit

extension GraphGraphic{
   /**
    * CircleUtil
    */
   class CircleUtil{
      typealias Style = (fill:UIColor, stroke:UIColor, strokeWidth:CGFloat)
      typealias Circle = (center:CGPoint, radius:CGFloat)
      /**
       * Draws circle
       * PARAM: progress: 0-1
       */
      static func drawCircle(with layer:CAShapeLayer, circle:Circle, style:Style, progress:CGFloat){
         let circlePath = UIBezierPath(arcCenter: CGPoint(x: circle.center.x, y: circle.center.y), radius:circle.radius, startAngle: CGFloat(Double.pi * -0.5), endAngle: CGFloat(Double.pi * 1.5), clockwise: true)/*The path should be the entire circle, for the strokeEnd and strokeStart to work*/
         layer.path = circlePath.cgPath/*Setup the CAShapeLayer with the path, colors, and line width*/
         layer.fillColor = style.fill.cgColor
         layer.strokeColor = style.stroke.cgColor
         layer.lineWidth = style.strokeWidth
         layer.lineCap = .round
         layer.strokeEnd = progress/*Sets progress of the stroke between predefined start and predefined end*/
      }
   }
}
