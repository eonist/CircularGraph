import UIKit

class OfferGraph:Graph {
   lazy var graphContentLabel:UILabel = createGraphContentLabel()
   let color:UIColor
   
   init(color: UIColor,frame:CGRect) {
      self.color = color
      let style:Graph.Style = (back:(Colors.lightGray,6),front:(color,6))
      super.init(style:style)
      //self.backgroundColor = .blue /*Debug*/
      _ = graphContentLabel
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
