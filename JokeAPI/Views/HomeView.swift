//
//  HomeView.swift
//  JokeAPI
//
//  Created by William Eze on 04/06/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "theatermask.and.paintbrush.fill")
                    Text("Jokes")
                }
            Settings()
                .tabItem {
                    Image(systemName: "gear.circle")
                    Text("Settings")
                }
        }
    }
}

#Preview {
    HomeView()
}
