//
//  ContentView.swift
//  DemoApp
//
//  Created by gamepub on 2021/01/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        Button(action:{
            //google login try
            Swift.print("google login")
        }){
            Text("Google Login").bold()
        }.padding()
        Button(action:{
            //facebook
            Swift.print("facebook login")
        }){
            Text("Facebook Login").bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
