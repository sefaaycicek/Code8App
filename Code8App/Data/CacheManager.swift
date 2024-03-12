//
//  CacheManager.swift
//  Code8App
//
//  Created by Sefa Aycicek on 12.03.2024.
//

import UIKit

class CacheManager: NSObject {
    static var shared : CacheManager = CacheManager()
    
    var cachedTeamlist : [Team] = []
}
