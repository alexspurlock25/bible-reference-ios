//
//  ContentView.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("API KEY: \(Secrets.apiBibleApiKey)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
