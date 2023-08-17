//
//  Profile.swift
//  GlowHigh
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        ZStack{
            Image("backgroundColor")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading){
                Text("GlowHigh Profile")
                    .navigationBarTitle("GlowHighProfile")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    .fontDesign(.serif)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .padding(25.0)
                
                Text("Name: Karlie Kloss")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    .multilineTextAlignment(.leading)
                    .fontDesign(.serif)
                Text("Survey Settings:")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    .fontDesign(.serif)
                Spacer()
            }
        }
    }
    struct Profile_Previews: PreviewProvider {
        static var previews: some View {
            Profile()
        }
    }
}
