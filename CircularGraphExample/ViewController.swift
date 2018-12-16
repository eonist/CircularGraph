 import UIKit
 import With
 import Spatial
 
 class ViewController: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
      self.view = ExampleView()
   }
 }
 /**
  * 1. Master Cell Graph
  * 2. Detail Graph
  * 3. Offer graph
  */
 class ExampleView:UIView {
   lazy var cellGraph = createCellGraph()
   lazy var offerGraphCard = createOfferGraphCard()
   lazy var detailGraph = createDetailGraph()
   override init(frame: CGRect) {
      super.init(frame: frame)
      _ = cellGraph
      _ = offerGraphCard
      _ = detailGraph
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
 }
 /**
  * Create
  */
 extension ExampleView {
   /**
    * FromOfferGraph
    */
   func createOfferGraphCard() -> OfferGraphCard{//TODO: ⚠️️ Do
      let data:OfferGraphCard.Data = (subscriptionType:"Smart 3GB",price:"299",type:.from)
      let graph = OfferGraphCard(data:data)
      addSubview(graph)
      graph.activateAnchorAndSize { view in
         let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo:  .topLeft)
         let s = Constraint.size(view, to: self, offset: CGPoint(x: /*-arrowWidth/2*/0, y: 0), multiplier: CGPoint(x: 0.5, y: 1))
         return (a,s)
      }
      return graph
   }
   /**
    * GraphComponent
    */
   func createCellGraph() -> CellGraph{
      let side:CGFloat = self.frame.height// - (CustomCell.CellMargin.vertical*1) - (Margin.vertical*2)//(Margin.vertical*2)//each cell has aditional space to make space between cells
      let frame:CGRect = .init(x: 0, y: 0, width: side , height: side)
      return with(.init(availableData: 12, usedData: 6, frame: frame)) {
         self.addSubview($0)
         //circleGraph.backgroundColor = .blue /*Debug*/
         //         $0.activateConstraint { view in
         //            let top = Constraint.anchor(view, to: self.contentView, align: .top, alignTo: .top, offset:Margin.vertical)
         //            let right = Constraint.anchor(view, to: self.contentView, align: .right, alignTo: .right, offset:-Margin.horizontal)//possibly add some negative margin here
         //            let h = Constraint.height(view, to: self.contentView, offset: -(Margin.vertical*2))
         //            let w = Constraint.length(view, to: view, viewAxis: .horizontal, toAxis: .vertical)
         //            return [right,top,w,h]
         //         }
      }
   }
   /**
    * DetailGraph
    */
   func createDetailGraph() -> DetailGraph{
      return DetailGraph.init()
   }
 }

