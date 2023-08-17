//
//  Home.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct Home: View {
    @State var currentDate: Date = Date()
    
    @State var title: String = ""
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
  
    

    var body: some View {
        
        
        NavigationStack {
            
            VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //custom date picker
                    CustomDatePicker(currentDate: $currentDate)
                }
                .padding(.vertical)
            }
            // Safe area view:
            .safeAreaInset(edge: .bottom) {
               
                NavigationLink(destination: NewToDoView(title: title, toDoItems: $toDoItems,  showNewTask: $showNewTask)) {
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 150.0, height: 35.0)
                        Text("Add Task")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 350)
                            .background(Color(hue: 0.081, saturation: 0.838, brightness: 0.431), in: Capsule())

                            
                    }
                    
                    
                }
               
                
               /* Button(
                        NavigationLink(destination: NewToDoView(title: title,isImportant: isImportant, toDoItems: $toDoItems,  showNewTask: $showNewTask) {
                            Text("Add Task"))
                }
            ) {
                    self.showNewTask = true
                    
                }
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(Color(hue: 0.081, saturation: 0.838, brightness: 0.431), in: Capsule())
                .padding(.horizontal)
                .padding(.top, 10)
                .foregroundColor(.black)
                .background(.ultraThinMaterial)
                */
                
            }
            
        }
               
                                         }
        
        }
        
        
    }
                                         

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
