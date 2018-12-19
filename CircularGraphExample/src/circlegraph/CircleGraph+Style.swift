import UIKit
import Chaplin

/**
 * Style (Signature and default)
 */
extension CircleGraph{
   typealias GraphStyle = (color:UIColor,strokeWidth:CGFloat)
   typealias Style = (back:GraphStyle,front:GraphStyle)
   static let defaultStyle:CircleGraph.Style = (back:(Colors.lightGray,6),front:(Colors.purple,6))
}
