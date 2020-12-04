//
//  FirstViewController.swift
//  Coordinator-Sample
//
//  Created by 今西玲巳 on 2020/12/04.
//

import UIKit

final class FirstViewController: UIViewController {

    private var secondCoordinator: SecondCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "First"
    }
    
    @IBAction func next(_ sender: UIButton) {
        secondCoordinator = SecondCoordinator(firstVC: self)
        secondCoordinator?.start()
    }
    
}
