import UIKit
import Spatial
import With
/**
 * Create
 */
extension OfferGraph{
   /**
    * Create GraphCircle
    */
   override func createGraphGraphic() -> GraphGraphic {
//      Swift.print("OfferGraph.createGraphGraphic: \(self.frame)")
      let style:GraphGraphic.Style = (back:(Colors.lightGray,6), front:(self.color,6))
      return with(GraphGraphic.init(style:style,frame:self.bounds)) {
         addSubview($0)
         $0.activateAnchorAndSize { view in
            let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo:  .topLeft)
            let s = Constraint.size(view, to: self)
            return (a,s)
         }
      }
   }
   /**
    * Create graphContentLabel
    */
   func createGraphContentLabel() -> UILabel{
      return with(.init()) {
         $0.textColor = .black
         $0.textAlignment = .center
         $0.text = "3 GB"
         $0.font = UIFont.boldSystemFont(ofSize: 28)
         //$0.backgroundColor = .gray
         self.addSubview($0)
         $0.activateAnchorAndSize { view in
            let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo:  .topLeft)
            let s = Constraint.size(view, to: self)
            return (a,s)
         }
      }
   }
}
