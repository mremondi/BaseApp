//
//  MainNavigator.swift
//  Navigation
//
//  Created by Michael Remondi on 8/10/18.
//  Copyright © 2018 Michael Remondi. All rights reserved.
//

import Foundation
import UIKit

class StackNavigator: Navigator{
    
    fileprivate var navigationController: UINavigationController?
    
    public var rootViewController: UIViewController {
        return navigationController!
    }
    
    typealias Factory = ViewControllerFactory
    fileprivate let factory: Factory
    
    init(factory: Factory, dismiss: @escaping () -> Void){
        self.factory = factory
        self.navigationController = UINavigationController()
        toHomeViewController()
    }
}

extension StackNavigator: HomeNavigator{
    func toHomeViewController() {
        let homeVC = factory.makeHomeViewController(navigator: self)
        navigationController?.pushViewController(homeVC, animated: true)
    }
}
