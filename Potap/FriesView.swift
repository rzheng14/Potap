//
//  FriesView.swift
//  Potap
//
//  Created by Richard Zheng on 12/22/20.
//

import UIKit

class FriesView: UIViewController {
  
  @IBOutlet var potap: UIButton!
  @IBOutlet var recipe: UIButton!
  
  override func viewDidLoad() {
    assignbackground()
  }
  @IBAction func potap(_ sender: Any) {
    print("french fries")
  }
  
  func assignbackground(){
    let background = UIImage(named: "background.png")

    var imageView : UIImageView!
    imageView = UIImageView(frame: view.bounds)
    imageView.contentMode =  UIView.ContentMode.scaleAspectFill
    imageView.clipsToBounds = true
    imageView.image = background
    imageView.center = view.center
    view.addSubview(imageView)
    self.view.sendSubviewToBack(imageView)
    }
}
