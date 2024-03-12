//
//  ViewController.swift
//  Code8App
//
//  Created by Sefa Aycicek on 12.03.2024.
//

import UIKit
import FirebaseCrashlytics
import FirebaseFirestore

class ViewController: UIViewController {
    
    @IBOutlet weak var bacgroundImage: UIImageView!
    @IBOutlet weak var code8LeadingConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       /* var teamMembers = [TeamMembers]()
        let aTeamMember = TeamMembers(fullname: "Ali Veli - 2", image: "", isactive: true, social: ["linkedin"])
        teamMembers.append(aTeamMember)
        
        let teams = Team(title: "Ekip-2", image: "", members: teamMembers)
        
        let db = Firestore.firestore()
        /*db.collection("Teams").getDocuments { snapshot, error in
            snapshot?.documents.forEach({ item in
                print(item.data())
            })
        }*/
        
        //try! db.collection("Agenda").document(UUID().uuidString).setData(from: agenda)
        
        try? db.collection("Teams").addDocument(from: teams)*/
        
        animate()
    }
    
    func animate() {
        UIView.animate(withDuration: 1.0) {
            self.bacgroundImage.alpha = 1
        } completion: { _ in
            self.animateLogo()
        }
    }
    
    func animateLogo() {
        self.code8LeadingConstraint.constant = 8
        
        UIView.animate(withDuration: 1.0) {
            self.view.layoutSubviews()
        } completion: { _ in
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                let controller = StoryBoardManager.main.viewController(with: IntroViewController.self)
                controller.modalPresentationStyle = .fullScreen
                self.present(controller, animated: true)
            }
        }

    }
}

