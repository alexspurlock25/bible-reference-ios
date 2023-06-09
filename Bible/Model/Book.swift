//
//  Book.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/5/23.
//

import Foundation

struct BooksResponse: Codable {
    let data: [Book]
}

struct BookResponse: Codable {
    let data: Book
}

struct Book: Codable {
    let id: String
    let bibleId: String
    let abbreviation: String
    let name: String
    let nameLong: String
    let chapters: [ChapterSummary]?
}
