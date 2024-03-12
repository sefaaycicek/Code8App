//
//  Rules.swift
//  Code8App
//
//  Created by Sefa Aycicek on 12.03.2024.
//

import UIKit

class Rules: Codable {
    var title : String
    var desc : String
    
    init(title: String, desc: String) {
        self.title = title
        self.desc = desc
    }
}
