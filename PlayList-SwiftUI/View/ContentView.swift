//
//  ContentView.swift
//  PlayList-SwiftUI
//
//  Created by Zohra Achour on 29/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue: Double = 25
    
    var body: some View {
        
                NavigationView {
        
                    List(userList, id: \.self) { users in
                        NavigationLink(destination: UserProfile(user: users)) {
                            HStack(alignment: .center, spacing: 5) {
                                Image("")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .background(Color.purple)
                                    .cornerRadius(10)
                                VStack {
                                    Text("\(users.username)")
//                                    Text("\(users.id)")
                                }
                                
                                
        
                            }
                        }
                    }
                .navigationBarTitle("Trainers")
                } // fin de NavView
//        ZStack {
//
//
//            if sliderValue <= 15 {
//                Color(.cyan)
//            }
//            else if sliderValue <= 35 {
//                Color(.orange)
//            }
//            else {
//                Color(.red)
//            }
//
//
//            VStack {
//                Spacer()
//                Text("\(Int(sliderValue)) °c")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//
//                if sliderValue <= 15 {
//                    Text("It's way to cold")
//                }
//                    else if sliderValue <= 35 {
//                    Text("Temp is just right cap'")
//                }
//                else {
//                    Text("Woah... I'm melting")
//                }
//
//                Slider(value: $sliderValue, in: 0...50)
//                Spacer()
//
//            }
//            .padding(30)
//
//
//        }
//        .edgesIgnoringSafeArea(.all)
        
        
        
        
    } // fin de body
} // find de ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
