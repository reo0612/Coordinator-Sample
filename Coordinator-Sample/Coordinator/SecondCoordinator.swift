//
//  SecondCoordinator.swift
//  Coordinator-Sample
//
//  Created by 今西玲巳 on 2020/12/04.
//

import UIKit

//SecondCoordinatorはFirst -> Secondの画面遷移を担当するクラス
final class SecondCoordinator: Coordinator {
    
    var firstVC: FirstViewController?
    
    init(firstVC: FirstViewController) {
        self.firstVC = firstVC
    }
    
    
    func start() {
        let secondVC = UIStoryboard(name: StoryboardName.second.rawValue, bundle: nil).instantiateInitialViewController() as! SecondViewController
        self.firstVC?.present(secondVC, animated: true, completion: nil)
    }
    
}
