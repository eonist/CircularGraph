import UIKit
/**
 * SimpleCircGraph only shows one arc
 */
class CellGraph:CircleGraph{
   lazy var remainingDataLabel:UILabel = createRemainingDataLabel()
   lazy var remainingTextLabel:UILabel = createRemainingTextLabel()
   /*Data*/
   var availableData:Double//TODO: ⚠️️ group these
   var usedData:Double
   init(availableData: Double, usedData: Double, frame: CGRect) {
      self.availableData = availableData
      self.usedData = usedData
      super.init(frame: frame)
      _ = remainingDataLabel
      _ = remainingTextLabel
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}

//class CircleGraph:UIView{
//   //   lazy var graph:CircleGraph = createCircleGraph()
//   //   lazy var descriptionText:DescriptionView = createDescriptionText()
//   let data: Data
//   init(data:Data, frame: CGRect = .zero) {
//      self.data = data
//      super.init(frame: frame)
//      _ = graph
//      _ = descriptionText
//   }
//   required init?(coder aDecoder: NSCoder) {
//      fatalError("init(coder:) has not been implemented")
//   }
//}

