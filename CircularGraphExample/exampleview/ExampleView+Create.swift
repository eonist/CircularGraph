 import UIKit
 import With
 import Spatial
/**
 * Create
 */
extension ExampleView {
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
            //let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo: .topLeft)
            return Constraint.size(view, size: .init(width:side,height:side))
            //return (a,s)
         }
      }
   }
   /**
    * FromOfferGraph
    */
   func createOfferGraphCard() -> OfferSheet{//TODO: ⚠️️ Do
      let data:OfferSheet.Data = (subscriptionType:"Smart 3GB",price:"299",type:.from)
      return with(.init(data:data)) {
         addSubview($0)
         $0.activateSize { view in
            return Constraint.size(view, size: .init(width:100,height:150))
         }
      }
//      let graph = OfferSheet
//      return graph
   }
   /**
    * DetailGraph
    */
   func createDetailGraph() -> DetailSheet{
      return with(.init()){
         addSubview($0)
         $0.activateConstraint{ view in
            let w = Constraint.width(view, to: self, multiplier: 1)
            let h = Constraint.length(view, to: view, viewAxis: .horizontal, toAxis: .vertical)
            return [w,h]
         }
      }
   }
   /**
    * Creates UILabel
    */
   func createUILabel(text:String) -> UILabel{
      return with(.init()){
         $0.text = text
         $0.font = .systemFont(ofSize: 14)
         addSubview($0)
         $0.activateSize { view in
            return Constraint.size(view, to: self, height: 24)
         }
      }
   }
}
