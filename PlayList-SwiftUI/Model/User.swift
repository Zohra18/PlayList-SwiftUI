//
//  User.swift
//  PlayList-SwiftUI
//
//  Created by Zohra Achour on 29/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import Foundation

struct User: Identifiable, Hashable {
    
    var id = UUID()
    var username: String
//    var userEmail: String
//    var password: String
    var userImage: String
    var userPlayList: [String]
    
}
