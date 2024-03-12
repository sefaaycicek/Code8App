//
//  StoryBoardManager.swift
//  AZLayout
//
//  Created by Sefa Aycicek on 16.02.2024.
//

import UIKit

enum StoryBoardManager : String {
    case main = "Main"
    case payment = "Payment"
    
    var instance : UIStoryboard{
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T : UIViewController>(with viewControllerClass : T.Type) -> T {
        let storyboardId = (viewControllerClass as T.Type).storyBoardID
        guard let scene = instance.instantiateViewController(withIdentifier: storyboardId) as? T else {
            fatalError("Viewcontroller with identifier \(storyboardId) not found in \(self.rawValue)")
        }
        return scene
    }
}

extension UIViewController {
    class var storyBoardID : String {
        return "\(self)" // -> "SecondViewController"
    }
}
