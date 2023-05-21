//
//  ContentView.swift
//  To Do List Swift UI
//
//  Created by Nidhi Pabbathi on 5/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("To Do List")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Text("+")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                    }
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
