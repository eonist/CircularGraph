import UIKit
import With
import Spatial

extension DetailGraph{
   /**
    * RemainingDataLabel
    */
   func createRemainingDataLabel() -> UILabel{
      return with(.init()){
         //$0.backgroundColor = .yellow
         $0.text = "12.3 GB"
         $0.font = .systemFont(ofSize: 12)
         $0.textColor = .black
         $0.textAlignment = .center
         addSubview($0)
         let circleRadius = frame.height/2
         let inscribedSquare = CircleGraph.squareInCircle(circleCenter: .init(x: circleRadius, y: circleRadius), radius: circleRadius)
         $0.activateAnchorAndSize { view in
            let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo: .topLeft, offset:inscribedSquare.origin)
            let s = Constraint.size(view, size: inscribedSquare.size,multiplier:CGSize(width:1,height:0.5))//(view, to: self, offset: .zero, multiplier: CGPoint.init(x: 1, y: 0.5))
            return (a,s)
         }
      }
   }
   /**
    * Create RemainingTextLabel
    */
   func createRemainingTextLabel() -> UILabel{
      return with(.init()) {
         $0.text = "Gjenstår"
         $0.font = .systemFont(ofSize: 10)
         $0.textColor = .black//.cyan
         $0.textAlignment = .center
         addSubview($0)
         /*Constraints*/
         $0.activateAnchorAndSize { view in
            let a = Constraint.anchor(view, to: remainingDataLabel, align: .topCenter, alignTo: .bottomCenter)
            let s = Constraint.size(view, to: remainingDataLabel)
            return (a,s)
         }
      }
   }
   /**
    *
    */
   func createDownButton() -> UIView{
      let downArrow:UIView = .init()
      return downArrow
   }
   /**
    * Create graphContentLabel
    */
   //   func createDataLabel() -> UILabel{
   //      return with(.init()) {
   //         $0.textColor = .black
   //         $0.textAlignment = .center
   //         $0.text = "12,3 GB"
   //         $0.font = UIFont.boldSystemFont(ofSize: 28)
   //         //$0.backgroundColor = .gray
   //         self.addSubview($0)
   //         $0.activateAnchorAndSize { view in
   //            let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo:  .topLeft)
   //            let s = Constraint.size(view, to: self)
   //
   //            //take a look at offercard font size setting etc.
   //            //size based on witdh and height based on 0.2 of width
   //
   //            return (a,s)
   //         }
   //      }
   //   }
   /**
    *
    */
   //   func createDescriptionLabel() -> UILabel {
   //      //w based on width
   //      //h based on 0.1 of width
   //      return .init()
   //   }
}
