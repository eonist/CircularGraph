import UIKit
import Chaplin
/**
 * EXAMPLE:
 * let view = GraphGraphic.init(frame: self.frame)
 * addSubview(view)
 */
class GraphGraphic:UIView{
   lazy var bgCircle:UIView = createBackgroundGraphic()
   lazy var fgCircle:UIView = createForgroundGraphid()
   let color:UIColor/*Forground color*/
   init(color:UIColor = .purple,frame:CGRect = .zero) {
      self.color = color
      super.init(frame: frame)
      //self.backgroundColor = .green/*Debug*/
   }
   /**
    * This serves as a sort of init for this class (AutoLayout is in charge of drawing, so we need to override this method)
    */
   override func layoutSubviews() {
      super.layoutSubviews()
      _ = bgCircle
      _ = fgCircle
   }
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
