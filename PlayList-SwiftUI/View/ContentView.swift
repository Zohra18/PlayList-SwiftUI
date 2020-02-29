//
//  ContentView.swift
//  PlayList-SwiftUI
//
//  Created by Zohra Achour on 29/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            List(userList) { users in
                NavigationLink(destination: UserProfile(user: users)) {
                    HStack(alignment: .center, spacing: 5) {
                        Image("")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .background(Color.purple)
                            .cornerRadius(10)
                        Text("\(users.username)")

                    }
                }
            }
        .navigationBarTitle("Trainers")
        } // fin de NavView
        
        
        
        
        
        } // fin de body
    } // find de ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
