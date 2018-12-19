
import UIKit

protocol GraphKind {
   func setProgress(progress:CGFloat)
   var style:CircleGraph.Style {get}
   func intro()
   func outro()
}
