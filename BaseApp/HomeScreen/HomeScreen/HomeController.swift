//
//  HomeController.swift
//  HomeScreen
//
//  Created by Michael Remondi on 8/10/18.
//  Copyright © 2018 Michael Remondi. All rights reserved.
//

import Foundation
import UIKit
import Extensions

public class HomeController: UIViewController {
    let homeView: HomeView!
    
    public init(homeView: HomeView) {
        self.homeView = homeView
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(homeView)
        self.homeView.fillSuperview()
        self.homeView.configureView()
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
