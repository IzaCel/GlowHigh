//
//  ContentView.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//


import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []

    var body: some View {
            Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
