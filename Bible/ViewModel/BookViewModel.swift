//
//  BookViewModel.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/5/23.
//

import Foundation

class BookViewModel: ObservableObject {
    @Published var books: [Book] = []
    @Published var book: Book?
    
    private let bibleId: String

    init(bibleId: String) {
        self.bibleId = bibleId
        fetchAll()
    }
    
    func fetchAll() {
        guard let url = URL(string: "\(APIBibleConfig.baseURL)/v1/bibles/\(self.bibleId)/books") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue(Secrets.apiBibleApiKey, forHTTPHeaderField: "api-key")
        
        let task = URLSession.shared.dataTask(with: request) { data, res, error in
            if error != nil {
                print("There was an error.")
                return
            }
            
            if let data = data, error == nil {
                let decoder = JSONDecoder()

                DispatchQueue.main.async {
                    do {
                        let response = try decoder.decode(BooksResponse.self, from: data)
                        self.books = response.data
                    } catch {
                        // handle error
                        print("\(error)")
                    }
                    
                }
            }

        }
        
        task.resume()
    }
    
    func fetchBook(bookId: String) {
        guard let url = URL(string: "\(APIBibleConfig.baseURL)/v1/bibles/\(self.bibleId)/books/\(bookId)") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue(Secrets.apiBibleApiKey, forHTTPHeaderField: "api-key")
        
        let task = URLSession.shared.dataTask(with: request) { data, res, error in
            if error != nil {
                print("There was an error.")
                return
            }
            
            if let data = data, error == nil {
                let decoder = JSONDecoder()

                DispatchQueue.main.async {
                    do {
                        let response = try decoder.decode(BookResponse.self, from: data)
                        self.book = response.data
                    } catch {
                        // handle error
                        print("\(error)")
                    }
                    
                }
            }

        }
        
        task.resume()
    }
}
