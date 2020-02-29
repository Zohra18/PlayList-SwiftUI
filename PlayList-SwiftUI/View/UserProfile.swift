//
//  UserProfile.swift
//  PlayList-SwiftUI
//
//  Created by Zohra Achour on 29/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct UserProfile: View {
    
    @State private var sliderValue: Double = 0.5
    
    var user: User
    
    
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text(" Hello \(user.username)!")
                .foregroundColor(.primary)
                .padding(20)
                .background(Color( sliderValue >= 1 ? .purple : .orange))
                .cornerRadius(20)
                
            
            Spacer()
            
            Text("Our value is at \(Int(sliderValue * 100)) ")
            Slider(value: $sliderValue, in: 0...2)
            
            Spacer()
            
            
        }
    .navigationBarTitle("Profile")
    .padding(30)
        
        
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile(user: User(username: "", userImage: "", userPlayList: [""]))
    }
}
