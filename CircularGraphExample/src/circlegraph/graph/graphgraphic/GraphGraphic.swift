import UIKit
import Chaplin
/**
 * EXAMPLE:
 * let view = GraphGraphic.init(frame: self.frame)
 * addSubview(view)
 */
class GraphGraphic:UIView{
   lazy var bgCircle:UIView = createBackgroundGraphic()
   lazy var fgCircle:UIView = createForgroundGraphid()//TODO: ⚠️️ rename this
   let style:GraphGraphic.Style
   init(style:Style, frame:CGRect) {
      self.style = style
      super.init(frame: frame)
      _ = bgCircle
      _ = fgCircle
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Style (Signature and default)
 */
extension GraphGraphic{
   typealias Style = (back:(color:UIColor,strokeWidth:CGFloat),front:(color:UIColor,strokeWidth:CGFloat))
   static let defaultStyle:GraphGraphic.Style = (back:(Colors.lightGray,6),front:(Colors.purple,6))
}
/**
 * This serves as a sort of init for this class (AutoLayout is in charge of drawing, so we need to override this method)
 */
//   override func layoutSubviews() {
//      super.layoutSubviews()
//
//      Swift.print("GraphGraphic.frame:  \(frame)")
//      //self.backgroundColor = .green/*Debug*/
//   }
