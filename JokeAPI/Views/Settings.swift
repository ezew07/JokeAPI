//
//  Settings.swift
//  JokeAPI
//
//  Created by William Eze on 04/06/2024.
//

import SwiftUI

struct Settings: View {
    
    @ObservedObject var shared = APIManager.shared
    
    var body: some View {
        Form {
            Picker("Joke type", selection: $shared.jokeType){
                ForEach(JokeType.allCases, id: \.rawValue){ jokeType in
                    Text(jokeType.rawValue).tag(jokeType)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Picker("Joke Category", selection: $shared.jokeCategory){
                ForEach(JokeCategory.allCases, id: \.rawValue){ category in
                    Text(category.rawValue).tag(category)
                }
            }
            .pickerStyle(MenuPickerStyle())

        }
        .navigationTitle("Settings")
    }
}

#Preview {
    Settings()
}
