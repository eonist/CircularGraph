import UIKit

protocol DetailGraphKind:GraphKind {
   func setRollOverProgress(progress:CGFloat)
   var rollOverGraphStyle:Graph.Style {get}
   func introRollOver()
   func outroRollOver()
}
