import UIKit

class OfferGraph:CircleGraph {

  
   lazy var graphContentLabel:UILabel = createGraphContentLabel()
   let color:UIColor
   init(color: UIColor) {
      self.color = color
      super.init(frame: .zero)
      //self.backgroundColor = .blue /*Debug*/
//      _ = graphCircle
      _ = graphContentLabel
   }
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   
}

