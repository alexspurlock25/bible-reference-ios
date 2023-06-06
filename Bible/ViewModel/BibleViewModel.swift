//
//  BibleSummaryViewModel.swift
//  Bible
//
//  Created by Alexander Spurlock on 6/4/23.
//

import Foundation

class BibleViewModel: ObservableObject {
    @Published var bibles: [Bible] = []
    @Published var bibleSummarys: [BibleSummary] = []
    
    func fetch() {
        guard let url = URL(string: "\(APIBibleConfig.baseURL)/v1/bibles") else {
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
                        let response = try decoder.decode(BibleSummaryResponse.self, from: data)
                        self.bibleSummarys = response.data
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
