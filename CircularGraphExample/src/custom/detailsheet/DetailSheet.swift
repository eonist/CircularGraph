import UIKit
import AnimationButtonLibrary
import Spatial

/**
 * DetailGraph can show many arcs simultaniously
 */
class DetailSheet:UIView {
   lazy var detailGraph:DetailGraph = createDetailGraph()
   lazy var periodLabel:UILabel = createPeriodLabel()
   lazy var addDataButton:AnimationButton = createAddDataButton()
   /**
    * init
    */
   override init(frame: CGRect) {
      super.init(frame: frame)
      self.backgroundColor = .green
      _ = detailGraph
      _ = periodLabel
      _ = addDataButton
      [detailGraph,periodLabel,addDataButton].activateAnchors { views in
         return Constraint.distribute(vertically: views, align: .topCenter)
      }
      // let xAnchors = views.enumerated().map{Constraint.anchor($0.1, to: self, align: .centerX, alignTo: .centerX)}
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
