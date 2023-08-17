//
//  NameView.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct NameView: View {
    @State private var name = ""
    @State var textTile = "Enter Full Name"
    @State private var presentAlert = false
    var body: some View {
        NavigationStack {
            ZStack{
                Image("backgroundColor")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("GlowHigh")
                        .font(.largeTitle)
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                        .shadow(radius: 10)
                        .padding(30.0)
                        .padding ()
                    
                    VStack {
                        Text(textTile)
                            .font(.title)
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                            .shadow(radius: 5)
                        
                        TextField("Type name here...", text: $name)
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .fontDesign(.serif)
                            .border(Color(red: 0.50, green: 0.33, blue: 0.22), width:1)
                        
                        Button("Submit Name"){
                            textTile = "Welcome, \(name)!"
                        }
                        .font(.title3)
                        .foregroundColor(Color(.white))
                        .padding ()
                        .fontDesign(.serif)
                        .buttonStyle(.borderedProminent).tint(Color(red: 0.50, green: 0.33, blue: 0.22))
                        .shadow(radius: 5)
                        
                        VStack{
                            // 2
                            Button("Click for Affirmation") {
                                // 3
                                presentAlert = true
                            }
                            .padding(.bottom)
                            .shadow(radius: 5)
                        }
                        .padding()
                        .font(.title3)
                        .foregroundColor(Color(.white))
                        .fontDesign(.serif)
                        .buttonStyle(.borderedProminent).tint(Color(red: 0.50, green: 0.33, blue: 0.22))
                        .alert(" I will perservere and overcome challenges to accomplish my goals!", isPresented: $presentAlert, actions: {}) // 4
                        VStack{
                            NavigationLink(destination: Survey()) {
                                Text ("Click to Start Survey")
                                    .fontDesign(.serif)
                                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                                    .font(.title3)
                                    .border(Color(red: 0.78, green: 0.58, blue: 0.52))
                                    .padding()
                                    .padding(.horizontal, 30)
                                    .padding(.vertical, 1)
                                    .background(RoundedRectangle(cornerRadius: 20).fill(Color(red: 0.68, green: 0.55, blue: 0.45)).shadow(radius: 3))
                                
                                NavigationLink(destination: Homepage().navigationBarBackButtonHidden(true)) {
                                    Text ("Start The Joruney!")
                                        .fontDesign(.serif)
                                        .font(.title3)
                                        .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                                        .padding(.horizontal, 30)
                                        .padding(.vertical, 16)
                                        .background(RoundedRectangle(cornerRadius: 20).fill(Color(red: 0.68, green: 0.55, blue: 0.45)).shadow(radius: 3))
                                } .navigationBarBackButtonHidden(true)
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct NameView_Previews: PreviewProvider {
        static var previews: some View {
            NameView()
        }
    }
}
