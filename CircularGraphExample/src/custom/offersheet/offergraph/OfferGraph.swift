import UIKit

class OfferGraph:CircleGraph {
   lazy var graphContentLabel:UILabel = createGraphContentLabel()
   let color:UIColor
   init(color: UIColor,frame:CGRect) {
      self.color = color
      super.init(frame: frame)
      //self.backgroundColor = .blue /*Debug*/
      _ = graphContentLabel
   }
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
