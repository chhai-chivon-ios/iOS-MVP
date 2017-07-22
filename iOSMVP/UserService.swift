//
//  UserService.swift
//  iOSMVP
//
//  Created by Chhai Chivon on 7/23/17.
//  Copyright © 2017 Chhai Chivon. All rights reserved.
//

import Foundation

class UserService {
    
    //the service delevers mocked data with a delay
    func getUsers(_ callBack:@escaping ([User]) -> Void ) {
        let users = [User(firstName: "Chhai", lastName: "Chivon", email: "chhaichivon@gmail.com", age: 22),
                     User(firstName: "A", lastName: "a", email: "a@gmail.com", age: 23),
                     User(firstName: "B", lastName: "b", email: "b@gmail.com", age: 24),
                     User(firstName: "C", lastName: "c", email: "c@gmail.com", age: 24),
                     User(firstName: "D", lastName: "d", email: "d@gmail.com", age: 25),
                     User(firstName: "E", lastName: "e", email: "e@gmail.com", age: 26),
                     User(firstName: "F", lastName: "f", email: "f@gmail.com", age: 22),
                     User(firstName: "G", lastName: "g", email: "g@gmail.com", age: 21)
        ]
        let delayTime = DispatchTime.now() + Double(Int64(2 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            callBack(users)
        }

    }
}
