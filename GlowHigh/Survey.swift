//
//  Survey.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct Survey: View {
    var body: some View {
        NavigationStack{
            VStack {
                Spacer ()
                Spacer ()
                Text("GlowHigh Survey")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    .fontDesign(.serif)
                    .shadow(radius: 10)
                Spacer ()
                Spacer()
                Text ("This survey was created for users to customize their productivity needs on GlowHigh! Click edit to select your productivity topics")
                    .font(.body)
                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    .multilineTextAlignment(.center)
                    .fontDesign(.serif)
                
                Spacer ()
                Spacer ()
                Text ("Select All Productivity Topics!")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    .fontDesign(.serif)
                    .shadow(radius: 8)
                @State var selection = Set<String>()
                let names = [
                    "School",
                    "Work",
                    "Fitness",
                    "Self Care"
                ]
                    List(names, id: \.self, selection: $selection) { name in
                        Text(name)
                    }
                    .navigationTitle("")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    .fontDesign(.serif)
                    .toolbar {
                        EditButton()
                    }
                }    }
        }
    }
    
    struct Survey_Previews: PreviewProvider {
        static var previews: some View {
            Survey()
        }
    }
