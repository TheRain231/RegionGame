//
//  PickerView.swift
//  RegionGame
//
//  Created by Андрей Степанов on 29.10.2024.
//

import SwiftUI

struct PickerView: View {
    @State var regionNumber: Int = 0
    
    var body: some View {
        HStack(spacing: 0){
            item(text: String(regionNumber / 10), 10)
            item(text: String(regionNumber % 10), 1)
        }
        .mask(RoundedRectangle(cornerRadius: 20))
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(style: .init(lineWidth: 3, lineCap: .round))
        }
    }
    
    func item(text: String, _ scale: Int) -> some View{
        VStack(spacing: 0){
            upperButton(scale)
            
            ZStack{
                Rectangle()
                    .stroke(style: .init(lineWidth: 0, lineCap: .round))
                    .aspectRatio(0.75, contentMode: .fit)
                Text(text)
                    .font(.system(size: 150, weight: .medium, design: .rounded))
                    .contentTransition(.numericText(value: Double(regionNumber)))
            }
            
            downerButton(scale)
        }
    }
    
    func upperButton(_ scale: Int) -> some View{
        Button {
            withAnimation {
                regionNumber += scale
            }
        } label: {
            ZStack{
                Rectangle()
                    .fill(.background)
                    .aspectRatio(3, contentMode: .fit)
                Image(systemName: "chevron.up")
                    .fontWeight(.black)
            }
        }
        .foregroundStyle(.primary)
        .overlay {
            Rectangle()
                .stroke(style: .init(lineWidth: 3, lineCap: .round))
        }
    }
    
    func downerButton(_ scale: Int) -> some View{
        Button {
            withAnimation {
                regionNumber -= scale
            }
        } label: {
            ZStack{
                Rectangle()
                    .fill(.background)
                    .aspectRatio(3, contentMode: .fit)
                Image(systemName: "chevron.down")
                    .fontWeight(.black)
            }
        }
        .foregroundStyle(.primary)
        .overlay {
            Rectangle()
                .stroke(style: .init(lineWidth: 3, lineCap: .round))
        }
    }
}

#Preview {
    PickerView()
        .padding()
}
