 import UIKit
 import With
 import Spatial
/**
 * 1. Master Cell Graph
 * 2. Detail Graph
 * 3. Offer graph
 */
class ExampleView:UIView {
   //TODO: ⚠️️ make the description labels
   //TODO: ⚠️️ make the correct percentage wise calulation of graph progress etc?
   lazy var cellLabel = createUILabel(text: "Cell graph:")
   lazy var cellGraph = createCellGraph()
   lazy var offerGraphCard = createOfferGraphCard()
   lazy var detailGraph = createDetailGraph()
   override init(frame: CGRect) {
      super.init(frame: frame)
      _ = cellLabel
      _ = cellGraph
      [cellLabel,cellGraph].activateAnchors { views in
         let anchors = Constraint.distribute(vertically: views, align: .topLeft)
         return anchors
      }
//      _ = offerGraphCard 👈
//      _ = detailGraph
      self.backgroundColor = .lightGray
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
