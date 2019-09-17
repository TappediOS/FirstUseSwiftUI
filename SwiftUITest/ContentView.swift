//
//  ContentView.swift
//  SwiftUITest
//
//  Created by jun on 2019/09/10.
//  Copyright © 2019 jun. All rights reserved.
//

import SwiftUI

struct ContentView : View {
   @ObservedObject var store = DogStore()
   
   var body: some View {
      NavigationView {
         List {
            
            Section {
               Button(action: addDog) {
                  Text("Add Dog")
               }
            }
            
            Section {
               ForEach(store.dogs) { dog in
                  ExtractedView(dog: dog)
               }
               .onDelete(perform: delete)
               .onMove(perform: move)
            }
         }
         .navigationBarTitle(Text("Dogs"))
         .navigationBarItems(trailing: EditButton())
         .listStyle(GroupedListStyle())
      }
   }
   
   func addDog() {
      store.dogs.append(Dog(name: "Shiba", FamilyNum: 3))
   }
   
   func delete(at offsets: IndexSet) {
      store.dogs.remove(atOffsets: offsets)
   }
   
   func move(from source: IndexSet, to destination: Int) {
      store.dogs.move(fromOffsets: source, toOffset: destination)
   }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
      Group {
         ContentView(store: DogStore(dogs: testData))
         ContentView(store: DogStore(dogs: testData))
            .environment(\.sizeCategory, .extraExtraExtraLarge)
         
         ContentView(store: DogStore(dogs: testData))
            .environment(\.colorScheme, .dark)
      }
   }
}
#endif

struct ExtractedView: View {
   let dog: Dog
   
   var body: some View {
      NavigationLink(destination: DogDetail(dog: dog)) {
         
         Image(dog.thumbnailName).resizable()
            .frame(width: 50, height: 50, alignment: .leading)
            .cornerRadius(8)
            
      
         
         VStack(alignment: .leading) {
            Text(dog.name)
            Text("\(dog.FamilyNum) ひき")
               .font(.subheadline)
               .foregroundColor(.secondary)
         }
      }
   }
}
