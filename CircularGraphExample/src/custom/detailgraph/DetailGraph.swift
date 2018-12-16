import UIKit
/**
 * DetailGraph can show many arcs simultaniously
 */
class DetailGraph:CircleGraph {
   lazy var backgroundCircle:UIView = createBackgroundCircle()
   lazy var dataLeftCircle:UIView = createDataLeftCircle()
   lazy var rollOverCircle:UIView = createRollOverCircle()
   /**
    * init
    */
   init(){
      super.init(frame:.zero)
      _ = backgroundCircle
      _ = dataLeftCircle
      _ = rollOverCircle
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * DetailGraph
 */
extension DetailGraph{
   func createBackgroundCircle() -> UIView{
      //draw circle
      return .init()
   }
   func createDataLeftCircle() -> UIView {
      //draw circle
       return .init()
   }
   func createRollOverCircle() -> UIView {
      //draw circle
       return .init()
   }
}
