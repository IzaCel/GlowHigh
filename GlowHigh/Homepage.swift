//
//  Homepage.swift
//  GlowHigh
//
//  Created by scholar on 8/16/23.
//

import SwiftUI
struct Homepage: View {
    var body: some View {
        NavigationStack {
             TabView{
                 ContentView()
                 .tabItem {
                   Image(systemName: "house")
                 }
               Journal()
                 .tabItem {
                   Image(systemName: "note.text")
                 }
               Tracker()
                 .tabItem {
                   Image(systemName: "folder.fill")
                 }
               ProfileView()
                 .tabItem {
                   Image(systemName: "person.crop.circle.fill")
                 }
             }
           }
         }
       }
    
    struct Homepage_Previews: PreviewProvider {
        static var previews: some View {
            Homepage()
        }
    }
