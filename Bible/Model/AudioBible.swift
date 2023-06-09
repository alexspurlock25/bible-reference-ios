//
//  AudioBible.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/5/23.
//

import Foundation

struct AudioBible: Codable {
    
}

struct AudioBibleSummary: Codable {
    let id: String
    let name: String
    let nameLocal: String
    let description: String?
    let descriptionLocal: String?
}
