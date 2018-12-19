import UIKit
/**
 * Basic elements of the graph (Style,forground-layer,background-layer)
 * Style: forground-arc-color,background-arc-color,stroke-thickness,rounded-edge
 * EXAMPLE:
 * let view = CircleGraph.init(frame: self.frame)
 * addSubview(view)
 */
class Graph:UIView,GraphKind{
   lazy var background:CAShapeLayer = createGraph(style: style.back, progress: 1)//createBackgroundGraphic()
   lazy var forground:CAShapeLayer = createGraph(style: style.front, progress: 0)//createForgroundGraphic()
   let style:Graph.Style
   var currentProgress:CGFloat = 0
//   public var destinationProgress:CGFloat
   var onLayout:()->Void = {Swift.print("nothing added to onLayoutClosure")}
//   var progress:Progress = (0,0)
   /*Init*/
   init(style:Style = Graph.defaultStyle/*,destinationProgress:CGFloat = 0.75*/) {
      self.style = style
//      self.destinationProgress = destinationProgress
      super.init(frame: .zero)
   }
   /**
    * This serves as a sort of init for this class (AutoLayout is in charge of drawing, so we need to override this method)
    * IMPORTANT: ⚠️️ Using this method is only relevant if you need to have access to .frame in the viewStack
    */
   override func layoutSubviews() {
      super.layoutSubviews()
      _ = background
      _ = forground
      onLayout()
//      intro()
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
//   static let defaultStyle:CircleGraph.Style = (front:CircleGraph.defaultStyle.front,back:(Colors.lightGray,6 ))
