//
//  ContentView.swift
//  foobar
//
//  Created by Roger Chapman on 1/9/20.
//  Copyright © 2020 rogchap. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var txt: String = ""
    
    var body: some View {
        VStack{
            TextField("", text: $txt)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Reverse"){
                let str = reverse(UnsafeMutablePointer<Int8>(mutating: (self.txt as NSString).utf8String))
                self.txt = String.init(cString: str!, encoding: .utf8)!
                // don't forget to release the memory to the C string
                str?.deallocate()
            }
            Spacer()
        }
        .padding(.all, 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
