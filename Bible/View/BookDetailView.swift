//
//  BookDetailView.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/5/23.
//

import SwiftUI

struct BookDetailView: View {
    @ObservedObject var bookViewModel: BookViewModel
    
    init(bookId: String, bookViewModel: BookViewModel) {
        self.bookViewModel = bookViewModel
        self.bookViewModel.fetchBook(bookId: bookId)
    }
    var body: some View {
        VStack {
            Text("\(bookViewModel.book?.name ?? "n/a")")
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(bookId: "GEN", bookViewModel: BookViewModel(bibleId: "de4e12af7f28f599-01"))
    }
}
