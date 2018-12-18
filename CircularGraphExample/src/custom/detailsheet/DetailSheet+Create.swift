import UIKit
import With
import Spatial
import AnimationButtonLibrary
/**
 * DetailGraph
 */
extension DetailSheet{
   /**
    * Creates the detailGraph
    */
   func createDetailGraph() -> DetailGraph{
      return with(.init()) {
         addSubview($0)
         $0.activateSize { view in
            let w = Constraint.width(view, to: self, multiplier: 0.7)
            let h = Constraint.length(view, to: view, viewAxis: .horizontal, toAxis: .vertical)
            return (w,h)
         }
      }
   }
   /**
    * Creates the priodLabel
    */
   func createPeriodLabel() -> UILabel {
      return with(.init()){
         //$0.backgroundColor = .yellow
         $0.text = "Ny periode starter 5. november"
         $0.font = .systemFont(ofSize: 12)
         $0.textColor = .black
         $0.textAlignment = .center
         addSubview($0)
         $0.activateSize { view in
            return Constraint.size(view, to: self,  height: 32)
         }
      }
   }
   /**
    * Creates the addDataButton
    */
   func createAddDataButton() -> AnimationButton {
//      let rect:CGRect = .init(x: 0, y: 0, width: 100, height: buttonHeight)
      return with(.init(style:AnimationButton.defaultStyle, text:"Legg til data", frame:.zero)){
         self.addSubview($0)
         $0.activateSize { view in
            let buttonHeight:CGFloat = 42
            let horizontalMargin:CGFloat = 32
            return Constraint.size(view, to: self, height: buttonHeight, offset: .init(x:-horizontalMargin*2,y:0))
         }
      }
   }
}
