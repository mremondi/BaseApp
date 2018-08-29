//
//  ViewControllerFactory.swift
//  BaseApp
//
//  Created by Michael Remondi on 5/25/18.
//  Copyright © 2018 Michael Remondi. All rights reserved.
//

import Foundation
import HomeScreen

protocol ViewControllerFactory{
    func makeHomeViewController(navigator: Navigator) -> HomeController
}
