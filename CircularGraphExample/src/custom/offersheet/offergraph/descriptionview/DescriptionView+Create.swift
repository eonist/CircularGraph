import UIKit
import With
/**
 * Create
 */
extension DescriptionView{
   /**
    * destination
    */
   func createDestinationLabel() -> UILabel {
      return with(.init()) {
         $0.textColor = .black
         $0.textAlignment = .center
         $0.text = data.type.destination
         //label.backgroundColor = .yellowb /*Debug*/
         self.addSubview($0)
      }
   }
   /**
    * type
    */
   func createSubscriptionTypeLabel() -> UILabel{
      return with(.init()) {
         //$0.backgroundColor = .magenta /*Debug*/
         $0.textColor = .black
         $0.textAlignment = .center
         $0.text = data.subscriptionType
         self.addSubview($0)
      }
   }
   /**
    * price
    */
   func createPriceLabel() -> UILabel {
      return with(.init()){
         //$0.backgroundColor = .cyan /*Debug*/
         $0.textColor = .black
         $0.textAlignment = .center
         $0.text = data.price
         self.addSubview($0)
      }
   }
}
