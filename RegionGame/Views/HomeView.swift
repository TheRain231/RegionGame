//
//  HomeView.swift
//  RegionGame
//
//  Created by Андрей Степанов on 29.10.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            PickerView()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
