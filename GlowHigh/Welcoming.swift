//
//  ContentView.swift
//  GlowHigh
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct Welcoming: View {
    @State private var currentTab = 0
    
    var body: some View {
        NavigationView {
                ZStack{
                    Image("backgroundColor")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        TabView(selection: $currentTab, content: {
                            ForEach(OnboardingData.list) { viewData in onboardingView(data: viewData)
                                    .tag(viewData.id)
                            }
                            
                        })
                        .tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        
                    }
                }
            }
        }
    }
    struct Welcoming_Previews: PreviewProvider {
        static var previews: some View {
            Welcoming()
        }
    }
