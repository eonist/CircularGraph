import UIKit
import Spatial
import With
/**
 * Create
 */
extension CircleGraph{
   /**
    * Creates GraphGraphic (overridable)
    * NOTE: we use the bounds because frame is not always (x:0,y:0)
    */
   @objc func createGraphGraphic() -> GraphGraphic{
      Swift.print("CircleGraph.createGraphGraphic: \(self.bounds)")
//      Swift.print("self.frame:  \(self.frame)")
      
      return with(.init(style:GraphGraphic.defaultStyle,frame:self.bounds)){
         addSubview($0)
//         $0.activateSize{ view in
//            return Constraint.size(view, to: self)
//         }
      }
   }
}
