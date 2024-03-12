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
        
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        button.setTitle("Test Crash", for: [])
        button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
        
        
        let agenda = Agenda(starttime: Date().timeIntervalSince1970,
                            endtime: Date().timeIntervalSince1970,
                            title: "Etkinlik-2")
        
        let db = Firestore.firestore()
        db.collection("Agenda").getDocuments { snapshot, error in
            snapshot?.documents.forEach({ item in
                print(item.data())
            })
        }
        
        //try! db.collection("Agenda").document(UUID().uuidString).setData(from: agenda)
        
        try? db.collection("Agenda").addDocument(from: agenda)
        
        animate()
    }
    
    func animate() {
        UIView.animate(withDuration: 1.0) {
            self.bacgroundImage.alpha = 1
        } completion: { _ in
            self.code8LeadingConstraint.constant = 8
            UIView.animate(withDuration: 1.0) {
                self.view.layoutSubviews()
            }
        }
    }
    
    
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        let numbers = [0]
        let _ = numbers[1]
        
        do {
            //try?
        } catch(let error) {
            Crashlytics.crashlytics().record(error: error)
        }
    }
}

