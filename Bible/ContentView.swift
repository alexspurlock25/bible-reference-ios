//
//  ContentView.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/4/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var bibleViewModel = BibleViewModel()
    
    var body: some View {
        VStack {
            Button("Fetch") {
                bibleViewModel.fetch()
            }
            .buttonStyle(.borderedProminent)
            List {
                ForEach(bibleViewModel.bibleSummarys, id: \.id) { bible in
                    Text("\(bible.name)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
