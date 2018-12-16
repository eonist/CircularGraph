import UIKit
import Spatial
import With
/**
 * Create
 */
extension CircleGraph{
   /**
    * Creates GraphGraphic (overridable)
    */
   @objc func createGraphGraphic() -> GraphGraphic{
      return with(.init(frame: self.frame)){
         addSubview($0)
      }
   }
}
