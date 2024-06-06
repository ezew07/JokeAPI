//
//  ContentView.swift
//  JokeAPI
//
//  Created by William Eze on 04/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State var shared = APIManager.shared
    @State var joke: Joke?
    
    var body: some View {
        VStack {
            Text("Joke Generator")
                .font(.title)
                .bold()
            Spacer()
            Text("\(joke?.setup ?? joke?.joke ?? "")")
            Text("\(joke?.delivery ?? "")")
                .italic()

            Spacer()
            Button("Generate"){
                Task {
                    joke = try await shared.getJoke()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
