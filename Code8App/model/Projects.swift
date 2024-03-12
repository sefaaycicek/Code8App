//
//  Projects.swift
//  Code8App
//
//  Created by Sefa Aycicek on 12.03.2024.
//

import UIKit

class Projects: Codable {
    var title : String
    var image : String
    var desc : String
    var link : String
    
    init(title: String, image: String, desc: String, link: String) {
        self.title = title
        self.image = image
        self.desc = desc
        self.link = link
    }
}
