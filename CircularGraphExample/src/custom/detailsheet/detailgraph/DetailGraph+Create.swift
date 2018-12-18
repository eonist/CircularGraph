import UIKit
import With
import Spatial

//get the height of the text with font etc
//use the height for the label
//make better alignments that way

extension DetailGraph{
   /**
    * RemainingDataLabel
    */
   func createRemainingDataLabel() -> UILabel{
      return with(.init()){
         $0.backgroundColor = .yellow
         let text:String = "12.3 GB"
         $0.text = text
         $0.font = UIFont.boldSystemFont(ofSize: 32.0)
         $0.textColor = .black
         $0.textAlignment = .center
//         $0.sizeToFit()
         
       
//         $0.contentInset = UIEdgeInsetsMake(-4,-8,0,0)
//         textContainer.lineFragmentPadding = 0
//         $0.contentMode = .bottom
         addSubview($0)
//         let circleRadius = frame.height/2
//         let inscribedSquare = CircleGraph.squareInCircle(circleCenter: .init(x: circleRadius, y: circleRadius), radius: circleRadius)
//         let textHeight:CGFloat = text.size(withAttributes:[.font: UIFont.boldSystemFont(ofSize:42)]).height - 12
         $0.activateAnchor { view in
            return Constraint.anchor(view, to: self, align: .bottomCenter, alignTo: .centerCenter)//, offset:inscribedSquare.origin
         }
//         $0.activateAnchorAndSize { view in
//            let a = Constraint.anchor(view, to: self, align: .bottomCenter, alignTo: .centerCenter)//, offset:inscribedSquare.origin
//            let s = Constraint.size(view, size:.init(width:inscribedSquare.width,height:textHeight))//(view, to: self, offset: .zero, multiplier: CGPoint.init(x: 1, y: 0.5))
//            return (a,s)
//         }
      }
   }
   /**
    * Create RemainingTextLabel
    */
   func createRemainingTextLabel() -> UILabel{
      return with(.init()) {
         $0.backgroundColor = .orange
         $0.text = "Gjenstår"
         $0.font = .systemFont(ofSize: 14)
         $0.textColor = .black//.cyan
         $0.textAlignment = .center
//         $0.contentMode = .top
         addSubview($0)
         /*Constraints*/
         
         $0.activateAnchor { view in
            //(view, to: self, align: .topCenter, alignTo: .bottomCenter)
            return Constraint.anchor(view, to: self, align: .topCenter, alignTo: .centerCenter)
//            let s = Constraint.size(view, to: remainingDataLabel)
//            return (a,s)
         }
      }
   }
   /**
    * Create the down arrow graphic
    */
   func createDownArrow() -> UIImageView{
      return with( .init(frame:.zero)) {//init(origin:.zero,size:.init(width:40,height:40)))
         addSubview($0)
         let img = UIImage.init(named: "downBtn")//?.resize(to: .init(width: 24, height: 24))
         $0.image = img
//         $0.backgroundColor = .darkGray
         $0.activateAnchorAndSize { view in
//            let a = Constraint.anchor(view, to: self.remainingTextLabel, align: .centerCenter, alignTo: .centerCenter)
            let a = Constraint.anchor(view, to: self, align: .centerCenter, alignTo: .centerCenter, offset:CGPoint(x:0,y:frame.height/4))
            let s = Constraint.size(view, size: .init(width:32,height:32))
            return (a,s)
         }
      }
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


