//
//  NewToDoView.swift
//  To Do List Swift UI
//
//  Created by Nidhi Pabbathi on 5/20/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    @Binding var showNewTask : Bool
    @Binding var toDoItems: [ToDoItem]
    
    var body: some View {
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack {
                Text("ADD A NEW TASK")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                
                TextField("Enter the task description", text: $title)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                
                Toggle(isOn: $isImportant) {
                    Text("Is it important?")
                        .font(.system(size: 20))
                        .fontWeight(.black)
                        .foregroundColor(.white)
                }.padding()
                    .shadow(radius: 10)
                    .tint(.gray)
                
                Button(action: {
                    self.addTask(title: self.title, isImportant: self.isImportant)
                    self.showNewTask = false
                }) {
                    Text("Add")
                        .padding()
                        .background(.white)
                        .font(.system(size: 15))
                        .fontWeight(.black)
                        .foregroundColor(.blue)
                        .shadow(radius: 10)
                        .cornerRadius(20)
                }
            }
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, showNewTask: .constant(true), toDoItems: .constant([]))
    }
}
