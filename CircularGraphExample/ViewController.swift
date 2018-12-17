 import UIKit
 import With
 import Spatial
 
 class ViewController: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
      self.view.backgroundColor = .lightGray
      with(ExampleView.init(frame: UIScreen.main.bounds)) {
         self.view.addSubview($0)
         $0.activateAnchorAndSize { view in
            let statusBarHeight = UIApplication.shared.statusBarFrame.height
            let a = Constraint.anchor(view, to: self.view, align: .topLeft, alignTo: .topLeft, offset:.init(x:0,y:statusBarHeight))
            let s = Constraint.size(view, size: .init(width:UIScreen.main.bounds.size.width,height:UIScreen.main.bounds.size.height-statusBarHeight))
            return (a,s)
         }
      }
   }
 }

