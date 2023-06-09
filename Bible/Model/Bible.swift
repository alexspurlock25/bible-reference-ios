//
//  Bible.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/5/23.
//

import Foundation

struct BibleResponse: Codable {
    let data: [Bible]
}

struct BibleSummaryResponse: Codable {
    let data: [BibleSummary]
}

struct Bible: Codable {
    let id: String
    let dblId: String
    let abbreviation: String
    let abbreviationLocal: String
    let copyright: String
    let language: Language
    let countries: [Country]
    let name: String
    let nameLocal: String
    let description: String
    let descriptionLocal: String
    let info: String
    let type: String
    let updatedAt: String
    let relatedDbl: String
    let audioBibles: [AudioBibleSummary]
    
    struct Country: Codable {
        let id: String
        let name: String
        let nameLocal: String
    }
}

struct BibleSummary: Codable {
    let id: String
    let dblId: String
    let abbreviation: String
    let abbreviationLocal: String
    let language: Language
    let countries: [Country]
    let name: String
    let nameLocal: String
    let description: String?
    let descriptionLocal: String?
    let relatedDbl: String?
    let type: String
    let updatedAt: String
    let audioBibles: [AudioBibleSummary]
    
    struct Country: Codable {
        let id: String
        let name: String
        let nameLocal: String
    }
}
