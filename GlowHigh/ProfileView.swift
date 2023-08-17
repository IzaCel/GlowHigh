//
//  secondProfile.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                        .frame(width: 125, height: 125)
                    
                    VStack(alignment:.leading){
                        HStack {
                            Text("Name: ")
                                .bold()
                                .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                            Text("Karlie Kloss")
                        }
                        .padding()
                        HStack {
                            Text("Email: ")
                                .bold()
                                .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                            Text("Karlie Kloss")
                        }
                        .padding()
                        HStack{
                            NavigationLink(destination: Survey()) {
                                Text("Edit Survey")
                                    .padding()
                                    .bold()
                                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                            }
                        }
                        
                    }
                    .padding()
                }
                .padding()
                .navigationTitle("Profile")
            }
        }
        }
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
