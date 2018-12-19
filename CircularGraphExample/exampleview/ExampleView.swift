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
   lazy var offerLabel = createUILabel(text: "Offer graph:")
   lazy var offerGraphCard = createOfferSheet()
   lazy var detailLabel = createUILabel(text: "Detail graph:")
   lazy var detailSheet = createDetailSheet()
   /**/
   override init(frame: CGRect) {
      super.init(frame: frame)
//      _ = cellLabel
      _ = cellGraph
//      _ = offerLabel
      _ = offerGraphCard
//      _ = detailLabel
      _ = detailSheet
      
      [/*cellLabel*/cellGraph,/*offerLabel,*/offerGraphCard/*,detailLabel*/,detailSheet].activateAnchors { views in
         let anchors = Constraint.distribute(vertically: views, align: .topLeft)
         return anchors
      }

      self.backgroundColor = .white//.lightGray
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
