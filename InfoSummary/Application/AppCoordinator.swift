//
//  AppCoordinator.swift
//  InfoSummary
//
//  Created by 박현진 on 2020/03/25.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

protocol Coordinatable {
    func startMain()
}

internal class AppCoordinator: Coordinatable {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.isNavigationBarHidden = true
    }
    
    func startMain() {        
        let vc = MainViewController.instantiate()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: false)
    }
    
    func startInsert() {
        let vc = InsertViewController.instantiate()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: false)
    }
}
