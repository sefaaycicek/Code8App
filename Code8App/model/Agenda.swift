//
//  Agenda.swift
//  Code8App
//
//  Created by Sefa Aycicek on 12.03.2024.
//

import UIKit

class Agenda: Codable {
    var starttime : Double
    var endtime : Double
    var title : String
    
    init(starttime: Double, endtime: Double, title: String) {
        self.starttime = starttime
        self.endtime = endtime
        self.title = title
    }
}
