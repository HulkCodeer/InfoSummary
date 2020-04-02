//
//  MainTableViewCell.swift
//  InfoSummary
//
//  Created by 박현진 on 2020/03/25.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

internal class MainTableViewCell : UITableViewCell {
    
    static let ReuseId = "MainTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.backgroundColor = .white
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")        
    }
    
    internal func bind() {
        
    }
}
