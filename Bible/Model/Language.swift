//
//  Language.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/5/23.
//

import Foundation

struct Language: Codable {
    let id: String
    let name: String
    let nameLocal: String
    let script: String
    let scriptDirection: String
}
