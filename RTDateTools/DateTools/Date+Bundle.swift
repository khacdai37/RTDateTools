//
//  Date+Bundle.swift
//  DateTools
//
//  Created by Matthew York on 8/26/16.
//  Copyright © 2016 Matthew York. All rights reserved.
//

import Foundation

public extension Bundle {
  
  class func dateToolsBundle() -> Bundle {
    guard let dateToolBundleUrl = Bundle(for: Constants.self).url(forResource: "DateTools", withExtension: "bundle"), let languagePath = Bundle(url: dateToolBundleUrl)?.path(forResource: DateToolConfiguration.defaultLanguageCode, ofType: "lproj"), let languageBundle = Bundle(path: languagePath) else {
      let assetPath = Bundle(for: Constants.self).resourcePath!
      return Bundle(path: NSString(string: assetPath).appendingPathComponent("DateTools.bundle"))!
    }
    return languageBundle
  }
}

