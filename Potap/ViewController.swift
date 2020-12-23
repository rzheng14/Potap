//
//  ViewController.swift
//  Potap
//
//  Created by Richard Zheng on 12/22/20.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
  
  @IBOutlet var potapButton: UIButton!
  @IBOutlet var recipeLink: UIButton!
  @IBOutlet var potatoPic: UIImageView!
  @IBOutlet var chosenLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    potatoPic.image = UIImage(named: "potato 1")
    
    assignbackground()
    
  }
  
  @IBAction func potap(_ sender: Any) {
    let number = Int.random(in: 0...7)
    switch number {
    case 0:
      chosenLabel.text = "French Fries"
      potatoPic.image = UIImage(named: "fries")
    case 1:
      chosenLabel.text = "Mashed Potatoes"
      potatoPic.image = UIImage(named: "mashed")
    case 2:
      chosenLabel.text = "Baked Potatoes"
      potatoPic.image = UIImage(named: "baked")
    case 3:
      chosenLabel.text = "Potato Wedges"
      potatoPic.image = UIImage(named: "wedge")
    case 4:
      chosenLabel.text = "Potato Chips"
      potatoPic.image = UIImage(named: "chips")
    case 5:
      chosenLabel.text = "Potato Soup"
      potatoPic.image = UIImage(named: "soup")
    case 6:
      chosenLabel.text = "Step Potato"
      potatoPic.image = UIImage(named: "sweet")
    default:
      chosenLabel.text = "Couch Potato"
      potatoPic.image = UIImage(named: "couch")
    }
    
    potapButton.setImage(UIImage(named: "button2"), for: .normal)
    let newString = NSMutableAttributedString(string: "Click here for a recipe!");
    newString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: NSRange(location: 0, length: 2))
    newString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSRange(location: 6, length: 4))
    recipeLink.setAttributedTitle(newString, for: .normal)
  }
  /*
   https://www.allrecipes.com/recipe/24771/basic-mashed-potatoes/

   https://www.allrecipes.com/recipe/24332/ultimate-twice-baked-potatoes/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%203

   https://www.allrecipes.com/recipe/199575/oven-fresh-seasoned-potato-wedges/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%203

   https://www.allrecipes.com/recipe/73135/homestyle-potato-chips/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%204  https://www.allrecipes.com/recipe/18249/baked-sweet-potatoes/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%2023  https://www.allrecipes.com/recipe/13218/absolutely-ultimate-potato-soup/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%203
   */

  @IBAction func openRecipes(_ sender: Any) {
    switch chosenLabel.text {
    case "French Fries":
      let url = URL(string: "https://www.allrecipes.com/recipe/219634/chef-johns-french-fries/")!
      UIApplication.shared.open(url)
    case "Mashed Potatoes":
      let url = URL(string: "https://www.allrecipes.com/recipe/24771/basic-mashed-potatoes/")!
      UIApplication.shared.open(url)
    case "Baked Potatoes":
      let url = URL(string: "https://www.allrecipes.com/recipe/24332/ultimate-twice-baked-potatoes/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%203")!
      UIApplication.shared.open(url)
    case "Potato Wedges":
      let url = URL(string: "https://www.allrecipes.com/recipe/199575/oven-fresh-seasoned-potato-wedges/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%203")!
      UIApplication.shared.open(url)
    case "Potato Chips":
      let url = URL(string: "https://www.allrecipes.com/recipe/73135/homestyle-potato-chips/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%204")!
      UIApplication.shared.open(url)
    case "Potato Soup":
      let url = URL(string: "https://www.allrecipes.com/recipe/13218/absolutely-ultimate-potato-soup/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%203")!
      UIApplication.shared.open(url)
    case "Step Potato":
      let url = URL(string: "https://www.allrecipes.com/recipe/18249/baked-sweet-potatoes/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%2023")!
      UIApplication.shared.open(url)
    default:
      let cameraVc = UIImagePickerController()
      cameraVc.sourceType = UIImagePickerController.SourceType.camera
      cameraVc.cameraDevice = UIImagePickerController.CameraDevice.front
      self.present(cameraVc, animated: true, completion: nil)
    }
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

