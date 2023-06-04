//
//  Secrets.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/4/23.
//

import Foundation

struct Secrets {
    static let apiBibleApiKey = ProcessInfo.processInfo.environment["API_BIBLE_API_KEY"] ?? ""
}
