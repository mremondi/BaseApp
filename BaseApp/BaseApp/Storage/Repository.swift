//
//  Repository.swift
//  BaseApp
//
//  Created by Michael Remondi on 5/25/18.
//  Copyright © 2018 Michael Remondi. All rights reserved.
//

import Foundation

class SampleRepository{
    
    func getUser(userId: Int) -> User{
        guard let user = getUserFromCache(userId: userId) else {
            // make Network Request
            return User()
        }
        return user
    }
    
    private func getUserFromCache(userId: Int) -> User? {
        return nil
    }
}
