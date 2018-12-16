import UIKit
/**
 * Basic elements of the graph (Style,forground-layer,background-layer)
 * Style: forground-arc-color,background-arc-color,stroke-thickness,rounded-edge
 */
class CircleGraph:UIView{
   lazy var graphGraphic:GraphGraphic = createGraphGraphic()
   /*Init*/
   override init(frame:CGRect){
      super.init(frame: frame)
      _ = graphGraphic
      //self.backgroundColor = .orange /*Debug*/
      //self.layer.borderColor = UIColor.orange.cgColor /*Debug*/
      //self.layer.borderWidth = 1 /*Debug*/
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
