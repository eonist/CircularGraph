import UIKit
import With
import Spatial

class DetailGraph:CircleGraph {
//   lazy var backgroundCircle:UIView = createBackgroundCircle()
//   lazy var dataLeftCircle:UIView = createDataLeftCircle()
//   lazy var rollOverCircle:UIView = createRollOverCircle()
   
   lazy var remainingDataLabel:UILabel = createRemainingDataLabel()
//   lazy var remainingDataTextField:UITextField = createRemainingDataText()
   lazy var remainingTextLabel:UILabel = createRemainingTextLabel()
   lazy var downArrow:UIView = createDownArrow()
//   lazy var dataLabel:UILabel = createDataLabel()
//   lazy var descriptionLabel:UILabel = createDescriptionLabel()
   override init(frame:CGRect) {
      super.init(frame: frame)
//      _ = backgroundCircle
//      _ = dataLeftCircle
//      _ = rollOverCircle
      self.backgroundColor = .blue /*Debug*/
//      _ = graphContentLabel
   }
   /**
    * This serves as a sort of init for this class (AutoLayout is in charge of drawing, so we need to override this method)
    * IMPORTANT: ⚠️️ We use this method because to calculate the inscribedSquare we need access to the frame
    */
   override func layoutSubviews() {
      super.layoutSubviews()
//      _ = remainingDataTextField
      _ = remainingDataLabel
      _ = remainingTextLabel
      _ = downArrow
   }
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
