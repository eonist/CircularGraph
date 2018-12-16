import UIKit
import Spatial
/**
 * TODO: ⚠️️ Make these classes inside EXTENSIONS
 */
class OfferGraphCard:UIView{//Rename to OfferSheet
   lazy var graph:OfferGraph = createOfferGraph()//rename to offerGraph
   lazy var descriptionText:DescriptionView = createDescriptionText()
   let data:Data
   init(data:Data, frame: CGRect = .zero) {
      self.data = data
      super.init(frame: frame)
      _ = graph
      _ = descriptionText
   }
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
