import UIKit
/**
 * Basic elements of the graph (Style,forground-layer,background-layer)
 * Style: forground-arc-color,background-arc-color,stroke-thickness,rounded-edge
 */
class CircleGraph:UIView{
//   private let graphStyle:GraphGraphic.Style
   lazy var graphGraphic:GraphGraphic = createGraphGraphic()
   /**
    * This serves as a sort of init for this class (AutoLayout is in charge of drawing, so we need to override this method)
    * IMPORTANT: ⚠️️ Using this method is only relevant if you need to have access to .frame in the viewStack
    */
   override func layoutSubviews() {
      super.layoutSubviews()
//      Swift.print("CircleGraph.bounds:  \(bounds)")
      _ = graphGraphic
      //self.backgroundColor = .orange /*Debug*/
      //self.layer.borderColor = UIColor.orange.cgColor /*Debug*/
      //self.layer.borderWidth = 1 /*Debug*/
   }
}
/**
 * Boilerplate
 */
//   required init?(coder aDecoder: NSCoder) {
//      fatalError("init(coder:) has not been implemented")
//   }
/*Init*/
//   override init(frame:CGRect){
//      super.init(frame: frame)
//   }
