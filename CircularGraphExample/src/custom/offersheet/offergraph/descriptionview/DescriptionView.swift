import UIKit
import Spatial
/**
 * DescriptionView
 */
class DescriptionView:UIView{
   let data: OfferSheet.Data
   lazy var destinationLabel:UILabel = createDestinationLabel()
   lazy var subscriptionTypeLabel:UILabel = createSubscriptionTypeLabel()
   lazy var priceLabel:UILabel = createPriceLabel()
   init(data:OfferSheet.Data) {
      self.data = data
      super.init(frame: .zero)
      _ = destinationLabel
      _ = subscriptionTypeLabel
      _ = priceLabel
      /*AutoLayout*/
      [destinationLabel,subscriptionTypeLabel,priceLabel].activateAnchorsAndSizes { views in
         let a = Constraint.distribute(vertically: views, align: .topLeft)
         //views.map{Constraint.anchor($0, to: destinationLabel, align: .topLeft, alignTo:  .topLeft)}
         let s = views.map{ Constraint.size($0, to: self, offset: .zero, multiplier: .init(x:1,y:0.333)) }
         return (a,s)
      }
   }
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
