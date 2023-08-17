//
//  NewToDoView.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct NewToDoView: View {
    
    @State var title: String
    @Binding var toDoItems:
         [ToDoItem]
    @Binding var showNewTask : Bool
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Task:                                                ")
                .font(.title)
                .foregroundColor(Color(hue: 0.081, saturation: 0.838, brightness: 0.431))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                .foregroundColor(Color(red: 0.434, green: 0.246, blue: 0.069, opacity: 1.0))
                .multilineTextAlignment(.leading)
            TextField("Enter task here...                        ", text: $title)
                .padding()
                .font(.title3)
                .border(Color.gray, width:1)
                .padding()

                
                Button(action: {
                    self.showNewTask = false
                }){
                    Text ("Add")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 350)
                        .background(Color(hue: 0.081, saturation: 0.838, brightness: 0.431), in: Capsule())
                }
                .padding()
            }
        }
    
        
    }
    



struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", toDoItems: .constant([]), showNewTask: .constant(true))
    }
}

