//
//  journalPgTwo.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//

import SwiftUI
struct journalPgTwo: View {
  @State var title: String
  @State var journal: String
  var body: some View {
    VStack{
      NavigationStack {
        Text("Journal Entry")
          .font(.title)
          .fontDesign(.serif)
          .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
        Spacer()
          .frame(height:30)
        Text("Title")
          .font(.title3)
        Spacer()
          .frame(height:10)
        TextField("Type title here....", text: $title)
        Text("Journal")
          .font(.title3)
          .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
        Spacer()
          .frame(height:10)
        TextField("Type your thoughts here...", text: $journal)
        Spacer()
        NavigationLink(destination: ContentView()) {
          Text("Add Entry ")      }
      }.foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
        .fontDesign(.serif)
        .padding()
    }
  }
}
struct journalPgTwo_Previews: PreviewProvider {
  static var previews: some View {
    journalPgTwo(title: "", journal: "")
  }
}
/* struct journalPgTwo: View {
  @State var title: String
  @State var journal: String
  @State var addEntry: Int
  var body: some View {
    VStack{
      Text("Journal Entry")
      Text("Title")
      TextField("Type title here...", text: $title)
      Text("Journal")
      TextField("Type your thoughts here...", text: $journal)
      Button(action: {
         addEntry = +1
      }){
        Text ("Add Entry")
          .multilineTextAlignment(.center)
          .padding()
      }
    }
  }
}
struct journalPgTwo_Previews: PreviewProvider {
  static var previews: some View {
    journalPgTwo(title: "", journal: "", addEntry: Int())
  }
}
*/
