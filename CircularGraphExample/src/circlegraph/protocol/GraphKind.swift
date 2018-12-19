
import UIKit

protocol GraphKind {
//   var destinationProgress:CGFloat {get set}//(from:CGFloat,to:CGFloat)
   var style:Graph.Style {get}
   func intro(destination:CGFloat)
   func outro()
}
