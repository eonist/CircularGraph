 import UIKit
 import With
 import Spatial

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
      let side:CGFloat = 80//self.frame.height - (CustomCell.CellMargin.vertical*1) - (Margin.vertical*2)//(Margin.vertical*2)//each cell has aditional space to make space between cells
//      let frame:CGRect = .init(x: 0, y: 0, width: side , height: side)
      return with(.init(availableData: 12, usedData: 6, frame: .zero)) {
         self.addSubview($0)
         $0.backgroundColor = .white /*Debug*/
         $0.activateSize { view in
//            let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo: .topLeft)
            return Constraint.size(view, size: .init(width:side,height:side))
//            return (a,s)
         }
      }
   }
   /**
    * DetailGraph
    */
   func createDetailGraph() -> DetailGraph{
      return DetailGraph.init()
   }
   /**
    * Creates UILabel
    */
   func createUILabel(text:String) -> UILabel{
      return with(.init()){
         $0.text = text
         addSubview($0)
         $0.activateSize { view in
            return Constraint.size(view, to: self, height: 48)
         }
      }
   }
}
