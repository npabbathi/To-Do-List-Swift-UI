//
//  ContentView.swift
//  To Do List Swift UI
//
//  Created by Nidhi Pabbathi on 5/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    @State var toDoItems: [ToDoItem] = []
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
                        self.showNewTask = true
                    }) {
                        Text("+")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                    }
                }.padding()
                
                List {
                    ForEach (toDoItems) {
                        toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                    }
                }.padding()
                    .background(.blue)
                    .foregroundColor(.blue)
                
                if showNewTask {
                    NewToDoView(title: "", isImportant: false, showNewTask: $showNewTask, toDoItems: $toDoItems)
                        .shadow(radius: 10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
