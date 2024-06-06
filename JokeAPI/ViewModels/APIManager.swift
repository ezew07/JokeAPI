//
//  APIManager.swift
//  JokeAPI
//
//  Created by William Eze on 04/06/2024.
//

import Foundation

class APIManager: ObservableObject {
    static let shared = APIManager()
    private init() {}
    
    @Published var jokeType = JokeType.any
    @Published var jokeCategory = JokeCategory.any

    func getJoke() async throws -> Joke {
        // Define endpoint
        let endpoint = "https://v2.jokeapi.dev/joke/\(jokeCategory.rawValue)?type=\(jokeType)"
        print(endpoint)
        // Convert endpoint to URL object
        guard let url = URL(string: endpoint) else{
            throw JokeErrors.invalidURL
        }
        
        // Make API call
        let (data, response) = try await URLSession.shared.data(from: url)
        
        // Handle HTTP response
        if let httpResponse = response as? HTTPURLResponse {
            print("Status code: \(httpResponse.statusCode)")
            guard httpResponse.statusCode == 200 else {
                throw JokeErrors.invalidResponse
            }
        }
        
        //Handle Data
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(Joke.self, from: data)
        } catch {
            throw JokeErrors.invalidData
        }
        
    }
    
}
