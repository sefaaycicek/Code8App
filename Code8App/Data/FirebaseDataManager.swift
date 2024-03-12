//
//  FirebaseDataManager.swift
//  Code8App
//
//  Created by Sefa Aycicek on 12.03.2024.
//

import UIKit
import FirebaseFirestore
import CodableFirebase

protocol FirebaseDataManagerProtocol {
    
}

class FirebaseDataManager : FirebaseDataManagerProtocol {
    
    static var shared : FirebaseDataManager = FirebaseDataManager()
    let db = Firestore.firestore()
    
    func getTeams(onSuccess : @escaping ([Team])->()) {
        
        if !CacheManager.shared.cachedTeamlist.isEmpty {
            onSuccess(CacheManager.shared.cachedTeamlist)
            return
        }
        
        var teamItems = [Team]()
        db.collection("Teams").getDocuments { snapshot, error in
            snapshot?.documents.forEach({ query in
                if let aTeam = try? FirebaseDecoder().decode(Team.self, from: query.data()) {
                    teamItems.append(aTeam)
                }
            })
            CacheManager.shared.cachedTeamlist = teamItems
            onSuccess(teamItems)
        }
    }
}
