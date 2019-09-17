//
//  imageSwiftUIView.swift
//  SwiftUITest
//
//  Created by jun on 2019/09/10.
//  Copyright © 2019 jun. All rights reserved.
//

import SwiftUI

struct imageSwiftUIView : View {
    var body: some View {
        Image("GameCenter1").resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(
               Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 6)
      
    }
   
}

#if DEBUG
struct imageSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        imageSwiftUIView()
    }
}
#endif
