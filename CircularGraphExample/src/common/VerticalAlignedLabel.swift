import UIKit
/**
 * Example:
 * let label: VerticalAlignedLabel = UILabel()
 * label.contentMode = .bottom
 * Ref: https://stackoverflow.com/questions/18247934/how-to-align-uilabel-text-from-bottom
 * TODO: ⚠️️ Maybe we could just do sizeThatFits fitToSize etc or just us TextField?
 */
class VerticalAlignedLabel: UILabel {
   /**
    * Override drawText
    */
   override func drawText(in rect: CGRect) {
      var newRect = rect
      switch contentMode {
      case .top:
         newRect.size.height = sizeThatFits(rect.size).height
      case .bottom:
         let height = sizeThatFits(rect.size).height
         newRect.origin.y += rect.size.height - height
         newRect.size.height = height
      default:
         ()
      }
      
      super.drawText(in: newRect)
   }
}
