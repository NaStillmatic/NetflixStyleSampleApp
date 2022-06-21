//
//  Content.swift
//  NetflixStyleSampleApp
//
//  Created by HwangByungJo  on 2022/06/21.
//

import Foundation
import UIKit

struct Content: Decodable {
  
  let sectionType: Sectiontype
  let sectionName: String
  let contentItem: [Item]
  
  enum Sectiontype: String, Decodable {
    case basic
    case main
    case large
    case rank
  }
}

struct Item: Decodable {
  let description: String
  let imageName: String
  
  var image: UIImage {
    return UIImage(named: imageName) ?? UIImage()
  }
}
