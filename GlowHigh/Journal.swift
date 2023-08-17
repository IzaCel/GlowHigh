//
//  Journal.swift
//  GlowHigh
//
//  Created by scholar on 8/15/23.
//

import SwiftUI
import CoreData
struct Journal: View {
  @Environment(\.managedObjectContext) private var viewContext
  @FetchRequest(
    sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
    animation: .default)
    private var items: FetchedResults<Item>
  var body: some View {
    NavigationView {
      VStack {
        NavigationStack {
        Text("JOURNAL")
            .font(.largeTitle)
            .foregroundColor(Color.black)
            .fontWeight(.bold)
        /*
        List {
          ForEach(items) { item in
            NavigationLink {
              Text("Item at \(item.timestamp!, formatter: itemFormatter)")
            } label: {
              Text(item.timestamp!, formatter: itemFormatter)
            }
          }
          .onDelete(perform: deleteItems)
        }
         */
        List {
          ForEach(items) { item in
            NavigationLink {
              VStack {
                Text("KWK Day 1")
                  .font(.title2)
                .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                Spacer()
                  .frame(height:10)
                Text("Today was my first day at Kode with Klossy. My instructors are so nice and I already learned so much. I took the PATH to get to NYC. ")
                Spacer()
              }
              .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
              .fontDesign(.serif)
               } label: {
              Text("\(item.timestamp!, formatter: itemFormatter), KWK Day 1")
                   .foregroundColor(.gray)
                   .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
                   .fontDesign(.serif)
            }
          }
          .onDelete(perform: deleteItems)
        }
        /* given code - delete?
         .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            EditButton()
          }
          ToolbarItem {
            Button(action: addItem) {
              Label("Add Item", systemImage: "plus")
            }
          }
        }
         */
          Button(action: addItem  ) {
Text("_____________________")
            }
          .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
          NavigationLink(destination: journalPgTwo(title: "", journal: "") ){
            Text("+")
              .font(.largeTitle)
           // Label("Add Item", systemImage: "plus")
          }
          .foregroundColor(Color(red: 0.50, green: 0.33, blue: 0.22))
//        NavigationLink(destination: journalPgTwo(title: "", journal: "") ){
//          Text("+")
//        }
//
        /* Button("+") {
          addItem()
        }
        */
        //Text("Select an item")
      }
    }
  }
  }
  private func addItem() {
    withAnimation {
      let newItem = Item(context: viewContext)
      newItem.timestamp = Date()
      do {
        try viewContext.save()
      } catch {
        // Replace this implementation with code to handle the error appropriately.
        // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        // let nsError = error as NSError
        // fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
      }
    }
  }
  private func deleteItems(offsets: IndexSet) {
    withAnimation {
      offsets.map { items[$0] }.forEach(viewContext.delete)
      do {
        try viewContext.save()
      } catch {
        // Replace this implementation with code to handle the error appropriately.
        // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        let nsError = error as NSError
        fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
      }
    }
  }
}
private let itemFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.dateStyle = .short
  formatter.timeStyle = .none
  return formatter
}()
struct Journal_Previews: PreviewProvider {
  static var previews: some View {
    Journal().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
  }
}
