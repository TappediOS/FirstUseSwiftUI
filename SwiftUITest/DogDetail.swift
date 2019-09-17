//
//  DogDetail.swift
//  SwiftUITest
//
//  Created by jun on 2019/09/17.
//  Copyright © 2019 jun. All rights reserved.
//

import SwiftUI

struct DogDetail: View {
   let dog: Dog
   @State private var zoomed = false
   
    var body: some View {
      ZStack(alignment: .topLeading) {
         Image(dog.thumbnailName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .navigationBarTitle(Text(dog.name), displayMode: .inline)
            .onTapGesture {
               withAnimation(.easeIn(duration: 0.85)) { self.zoomed.toggle() }
            }
         .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
         
         if dog.hasChild && !zoomed {
            Image(systemName: "video.fill")
            .font(.title)
            .padding(.all)
            .transition(.move(edge: .leading))
         }
         
         
       }
   }
}

struct DogDetail_Previews: PreviewProvider {
    static var previews: some View {
      Group {
         NavigationView { DogDetail(dog: testData[5]) }
         NavigationView { DogDetail(dog: testData[1]) }
      }
    }
}
