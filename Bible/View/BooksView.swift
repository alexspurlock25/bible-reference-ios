//
//  BooksView.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/5/23.
//

import SwiftUI

struct BooksView: View {
    @ObservedObject private var bookViewModel: BookViewModel
    
    init(bibleId: String) {
        self.bookViewModel = BookViewModel(bibleId: bibleId)
    }
    
    var body: some View {
        List {
            ForEach(bookViewModel.books, id: \.bibleId) { book in
                NavigationLink(book.name) {
                    HStack {
                        BookDetailView(bookId: book.id, bookViewModel: self.bookViewModel)
                    }
                }
            }
        }
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView(bibleId: "472735b48a27b402-01")
    }
}
