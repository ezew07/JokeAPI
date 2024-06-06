//
//  Joke.swift
//  JokeAPI
//
//  Created by William Eze on 04/06/2024.
//

import Foundation

struct Joke: Codable {
    let category: String?
    let type: String?
    let setup: String?
    let joke: String?
    let delivery: String?
    let flags: Flags?
    let safe: Bool?
}
