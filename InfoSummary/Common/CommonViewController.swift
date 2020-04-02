//
//  CommonViewController.swift
//  InfoSummary
//
//  Created by 박현진 on 2020/03/25.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit
import Then
import SnapKit

internal class CommonViewController: UIViewController, Storyboarded {
    weak var coordinator: AppCoordinator?
    
    lazy var contentView = UIView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        self.view.addSubview(self.contentView)
        self.contentView.snp.makeConstraints{
            if #available(iOS 11.0, *) {
                $0.edges.equalTo(self.view.safeAreaLayoutGuide)
            } else {
                $0.edges.equalTo(self.view)
            }
        }
    }
}
