import UIKit

protocol DetailGraphKind:GraphKind {
   func setRollOverProgress(progress:CGFloat)
   var rollOverGraphStyle:CircleGraph.Style {get}
   func introRollOver()
   func outroRollOver()
}
