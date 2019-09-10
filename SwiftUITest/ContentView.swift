//
//  ContentView.swift
//  SwiftUITest
//
//  Created by jun on 2019/09/10.
//  Copyright © 2019 jun. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
