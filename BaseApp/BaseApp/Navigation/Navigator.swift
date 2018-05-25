//
//  Navigator.swift
//  BaseApp
//
//  Created by Michael Remondi on 5/25/18.
//  Copyright © 2018 Michael Remondi. All rights reserved.
//

import Foundation
import UIKit

protocol Navigator{
    // any navigation that all view controllers should have
}

protocol HomeNavigator: Navigator{
    func toHomeViewController()
}
