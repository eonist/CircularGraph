import Foundation
import Spatial
import With
/**
 * Create
 */
extension OfferSheet{
   /**
    * Create CircleGraph
    */
   func createOfferGraph() -> OfferGraph {
      Swift.print("createOfferGraph: frame: \(self.frame)")
      let graphColor:UIColor = self.data.type == .from ? .orange : .green
      return with(.init(color:graphColor,frame:self.frame )){
         addSubview($0)
         $0.backgroundColor = .white
         $0.activateAnchorAndSize { view in
            let a = Constraint.anchor(view, to: self, align: .bottomLeft, alignTo:  .bottomLeft)
            let s = (Constraint.width(view, to: self), Constraint.length(view, to: view, viewAxis: .vertical, toAxis: .horizontal))
            return (a,s)
         }
      }
   }
   /**
    * Create DescriptionText
    */
   func createDescriptionText() -> DescriptionView {
      return with(.init(data:data)) {
         self.addSubview($0)
         $0.activateConstraint { view in
            let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo:  .topLeft)
            let bottom = Constraint.anchor(view, to: graph, align: .bottom, alignTo: .top)
            let w = Constraint.width(view, to: self)
            return [a.x,a.y,bottom,w]
         }
      }
   }
}
