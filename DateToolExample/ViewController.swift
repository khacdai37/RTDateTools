//
//  ViewController.swift
//  DateToolExample
//
//  Created by Nguyen Khac Dai on 5/13/22.
//

import UIKit
import RTDateTools

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let date = Date(year: 2021, month: 4, day: 1)
    DateToolConfiguration.defaultLanguageCode = "vi"
    print(date.timeAgoSinceNow)
    DateToolConfiguration.defaultLanguageCode = "en"
    print(date.timeAgoSinceNow)
  }


}

