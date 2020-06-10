//
//  ViewController.swift
//  PocSlidingButton
//
//  Created by Phatcharaphan Ananpreechakun on 10/6/20.
//  Copyright © 2020 Phatcharaphan Ananpreechakun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SlidingButtonDelegate {

  @IBOutlet weak var slideToOpenButton: SlidingButton!

  override func viewDidLoad() {
    super.viewDidLoad()
   setupMarkUse()
  }

  private func setupMarkUse() {
    slideToOpenButton.delegate = self
    slideToOpenButton.sliderViewTopDistance = 0
    slideToOpenButton.sliderCornerRadius = 30
    slideToOpenButton.labelText = "Mark Use"
    slideToOpenButton.sliderBackgroundColor = .yellow
    slideToOpenButton.textColor = .black
    slideToOpenButton.thumbnailColor = .black
    slideToOpenButton.thumnailImageView.image = UIImage(named: "pin_placeholder", in: nil, compatibleWith: nil)
  }

  func slideToOpenDelegateDidFinish(_ sender: SlidingButton) {
     print("slideToOpenDelegateDidFinish::")
  }

}

