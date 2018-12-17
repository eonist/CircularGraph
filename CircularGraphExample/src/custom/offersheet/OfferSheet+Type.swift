import UIKit
import Spatial
/**
 * Type
 */
extension OfferSheet {
   typealias Data = (subscriptionType:String,price:String,type:OfferType)
   enum OfferType {
      case from,to
      var destination:String {
         switch self {
         case .from:
            return "Du har"
         case .to:
            return "Bytt til"
         }
      }
   }
}
