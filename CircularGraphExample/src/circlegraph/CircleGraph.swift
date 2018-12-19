import UIKit
/**
 * Basic elements of the graph (Style,forground-layer,background-layer)
 * Style: forground-arc-color,background-arc-color,stroke-thickness,rounded-edge
 * EXAMPLE:
 * let view = CircleGraph.init(frame: self.frame)
 * addSubview(view)
 */
class CircleGraph:UIView{//TODO: ⚠️️ rename to Graph
   lazy var bgCircle:CAShapeLayer = createGraph(style: style.back, progress: 1)//createBackgroundGraphic()
   lazy var fgCircle:CAShapeLayer = createGraph(style: style.front, progress: 0)//createForgroundGraphic()
   let style:CircleGraph.Style
//   static let defaultStyle:CircleGraph.Style = (front:CircleGraph.defaultStyle.front,back:(Colors.lightGray,6 ))
   /*Init*/
   init(style:Style = CircleGraph.defaultStyle) {
      self.style = style
      super.init(frame: .zero)
   }
   /**
    * This serves as a sort of init for this class (AutoLayout is in charge of drawing, so we need to override this method)
    * IMPORTANT: ⚠️️ Using this method is only relevant if you need to have access to .frame in the viewStack
    */
   override func layoutSubviews() {
      super.layoutSubviews()
      _ = bgCircle
      _ = fgCircle
      intro()
      //Swift.print("CircleGraph.bounds:  \(bounds)")
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
