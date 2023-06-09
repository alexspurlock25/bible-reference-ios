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
        NavigationView {
            List {
                ForEach(bibleViewModel.bibleSummarys, id: \.id) { bible in
                    NavigationLink("\(bible.name)") {
                        BooksView(bibleId: bible.id)
                    }
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
