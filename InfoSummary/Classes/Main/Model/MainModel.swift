//
//  MainModel.swift
//  InfoSummary
//
//  Created by 박현진 on 2020/03/25.
//  Copyright © 2020 박현진. All rights reserved.
//

import Foundation
import RealmSwift

internal final class MainModel: Object {
    @objc dynamic var mainTxt = ""
    @objc dynamic var subTxt = ""
}
