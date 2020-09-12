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
                //let goIn = GoString(p: self.txt.toUnsafePointer(), n: self.txt.utf8.count)
            
                
                //let goOut = reverseStr(goIn)
                let goOut = sayHello()
                
                self.txt = String.init(cString: goOut.p, encoding: .utf8)!
            
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

extension String {
    func toUnsafePointer() -> UnsafePointer<Int8>? {
        let d = self.data(using: .utf8) as NSData?
        let ptr = d?.bytes.assumingMemoryBound(to: Int8.self)
        return ptr
    }
}
