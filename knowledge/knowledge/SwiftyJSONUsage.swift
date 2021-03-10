//
//  SwiftyJSONUsage.swift
//  knowledge
//
//  Created by 李成杰 on 2021/3/10.
//

import Foundation
import SwiftyJSON

class Cat: NSObject {
    
    @objc func show() {
        let json = JSON(["name":"Jack", "age": 25])
        if let name = json["name"].string {
            // Do something you want
            print(name)
        } else {
            print("error") // "Dictionary["address"] does not exist"
        }
    }
    
}
