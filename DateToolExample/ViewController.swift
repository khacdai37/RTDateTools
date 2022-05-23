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
    
    let _ = NSDate(iso8601String: "2019-11-05T03:26:59.438Z") as Date?
    
    var date = Date()
    var chunk = TimeChunk()
    chunk.hours = -3
    date = date.add(chunk)
    DateToolConfiguration.defaultLanguageCode = "vi"
    print(date.timeAgoSinceNow)
    DateToolConfiguration.defaultLanguageCode = "en"
    chunk.days = 0
    chunk.hours = 1
    print(date.add(chunk).timeAgoSinceNow)
    print(date.format(with: "dd/MM/yyyy"))
  }


}

