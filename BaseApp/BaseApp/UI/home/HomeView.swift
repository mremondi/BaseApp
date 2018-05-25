//
//  HomeView.swift
//  BaseApp
//
//  Created by Michael Remondi on 5/25/18.
//  Copyright © 2018 Michael Remondi. All rights reserved.
//

import Foundation
import UIKit

class HomeView: UIView{
    var homeLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = UIColor.white
        initViews()
        initConstraints()
    }
    
    func initViews(){
        // may not need this with navbar
        homeLabel = UILabel()
        
        [homeLabel].forEach{
            addSubview($0)
        }
    }
    
    func initConstraints(){
        homeLabel.anchorCenter(to: self)
    }
    
    func configureView(){
        homeLabel.text = "Home"
    }
}
