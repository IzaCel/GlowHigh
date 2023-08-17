//
//  onboardingView.swift
//  GlowHigh
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct onboardingView: View {
    var data: OnboardingData
    @State private var isAnimating: Bool = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                ZStack{
                    Image(data.objectImage)
                        .resizable()
                        .frame(width: 300.0, height: 300.0)
                        .scaledToFit()
                        .padding()
                }
                
                Text(data.primaryText)
                    .font(.largeTitle)
                    .bold()
                    .fontDesign(.serif)
                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    .shadow(radius: 10)
                    .padding()
                
                Text(data.secondaryText)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: 480)
                    .foregroundColor(Color(.brown))
                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 2, y: 2)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding()
                    .frame(width: 350, height: 110)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color(red: 0.93, green: 0.91, blue: 0.89)).shadow(radius: 8))

                
                Spacer()
                
                }

            NavigationLink(destination: NameView() .navigationBarBackButtonHidden(true)) {
                Text("Press Here!")
                    .toolbar(.hidden, for: .tabBar)
                    .font(.title2)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 16)
                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
            }
           .navigationBarBackButtonHidden(true)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color(red: 0.68, green: 0.55, blue: 0.45)).shadow(radius: 3))
            
            .shadow(radius: 10)
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
        }
        
        struct onboardingView_Previews: PreviewProvider {
            static var previews: some View {
                onboardingView(data: OnboardingData.list.first!)
            }
        }
    }
