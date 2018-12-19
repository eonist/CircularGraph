import UIKit
import Chaplin

/**
 * Style (Signature and default)
 */
extension Graph{
   typealias GraphStyle = (color:UIColor,strokeWidth:CGFloat)
   typealias Style = (back:GraphStyle,front:GraphStyle)
   static let defaultStyle:Graph.Style = (back:(Colors.lightGray,6),front:(Colors.purple,6))
   typealias Progress = (from:CGFloat,to:CGFloat)
}
