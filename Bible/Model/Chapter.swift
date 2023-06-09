//
//  Book.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/5/23.
//

import Foundation

struct ChapterSummary: Codable {
    let id: String
    let bibleId: String
    let number: String
    let bookId: String
    let reference: String
}

struct Chapter: Codable {
    let id: String
    let bibleId: String
    let number: String
    let bookId: String
    let content: String
    let reference: String
    let verseCount: Int
    let next: Next
    let previous: Previous
    let copyright: String
    
    struct Next: Codable {
        let id: String
        let bookId: String
        let number: String
    }
    
    struct Previous: Codable {
        let id: String
        let bookId: String
        let number: String
    }
}
