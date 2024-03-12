//
//  Teams.swift
//  Code8App
//
//  Created by Sefa Aycicek on 12.03.2024.
//

import UIKit

class Team: Codable {
    var title : String
    var image : String
    var members : [TeamMembers]
    
    init(title: String, image: String, members: [TeamMembers]) {
        self.title = title
        self.image = image
        self.members = members
    }
}

class TeamMembers: Codable {
    var fullname : String
    var image : String
    var isactive : Bool
    var social : [String] = []
    
    init(fullname: String, image: String, isactive: Bool, social: [String]) {
        self.fullname = fullname
        self.image = image
        self.isactive = isactive
        self.social = social
    }
}
