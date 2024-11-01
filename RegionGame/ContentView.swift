//
//  ContentView.swift
//  RegionGame
//
//  Created by Андрей Степанов on 29.10.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { _ in
            HomeView()
        }
        .overlay(alignment: .top) {
            NavigationHeader()
        }
    }
}

#Preview {
    ContentView()
}
