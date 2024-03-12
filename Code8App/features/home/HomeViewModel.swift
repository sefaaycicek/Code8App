//
//  HomeViewModel.swift
//  Code8App
//
//  Created by Sefa Aycicek on 12.03.2024.
//

import UIKit

class HomeViewModel: NSObject {

    func prepareReadyData() {
        FirebaseDataManager.shared.getTeams { teamList in
            
        }
    }
}
