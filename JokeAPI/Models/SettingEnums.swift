//
//  SettingEnums.swift
//  JokeAPI
//
//  Created by William Eze on 04/06/2024.
//

import Foundation

enum JokeType: String, CaseIterable {
    case twopart = "Two part joke"
    case single = "One liner"
    case any = "Both"
}

enum JokeCategory: String, CaseIterable {
    case Programming = "Programming"
    case Miscellaneous = "Miscellaneous"
    case Dark = "Dark"
    case Pun = "Pun"
    case Spooky = "Spooky"
    case Christmas = "Christmas"
    case any = "Any"
}
