//
//  NavigationHeader.swift
//  RegionGame
//
//  Created by Андрей Степанов on 29.10.2024.
//

import SwiftUI

struct NavigationHeader: View {
    var body: some View {
        HStack{
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal")
            }
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "gearshape.fill")
            }
        }
        .font(.title)
        .foregroundStyle(.primary)
        .padding()
        .background{
            Rectangle()
                .foregroundStyle(.thinMaterial)
                .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    ContentView()
}
