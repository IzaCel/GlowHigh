//
//  Tracker.swift
//  GlowHigh
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct Tracker: View {
    @State private var fitness = true
    @State private var work = true
    @State private var selfCare = true
    var body: some View {
        NavigationView{
            ZStack{
                VStack {
                    Toggle("Fitness", isOn: $fitness)
                        .font(.title3)
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                        .padding()
                    if fitness {
                        Text("20 Pushups")
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                        Text ("30 minute run")
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    }
                    Toggle("Work", isOn: $work)
                        .font(.title3)
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                        .padding()
                    if work {
                        Text("Respond to email")
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                        Text("Submit project by 8/20")
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    }
                    Toggle("Self Care", isOn: $selfCare)
                        .font(.title3)
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                        .padding()
                    if selfCare {
                        Text("Face Mask")
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                        Text("Sugar Scrub")
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                    }
                }
            }
            .navigationTitle("Tracker")
        }
    }
}
struct Tracker_Previews: PreviewProvider {
    static var previews: some View {
        Tracker()
    }
}
