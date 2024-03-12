//
//  IntroViewController.swift
//  Code8App
//
//  Created by Sefa Aycicek on 12.03.2024.
//

import UIKit

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func navigateApp(_ sender: Any) {
        let controller = StoryBoardManager.home.viewController(with: MyTabbarController.self)
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true)
    }

}
