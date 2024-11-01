//
//  PickerView.swift
//  RegionGame
//
//  Created by Андрей Степанов on 29.10.2024.
//

import SwiftUI

struct PickerView: View {
    @State var vm = ViewModel()
    
    var body: some View {
        VStack{
            HStack(spacing: 0){
                item(text: String(vm.regionNumber / 10), 10)
                item(text: String(vm.regionNumber % 10), 1)
            }
            .mask(RoundedRectangle(cornerRadius: 20))
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(style: .init(lineWidth: 3, lineCap: .round))
            }
            
            desribtion()
                .padding()
        }
    }
    
    func desribtion() -> some View{
        Text(vm.currentRegionName())
            .font(.title)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineLimit(vm.isClicked ? 6 : 2)
            .overlay {
                if (vm.buttonAppears()){
                    Button{
                        withAnimation {
                            vm.toggleClicked()
                        }
                    } label: {
                        Color.clear
                    }
                }
            }
    }
    
    func item(text: String, _ scale: Int) -> some View{
        VStack(spacing: 0){
            upperButton(scale)
            itemBody(text)
            downerButton(scale)
        }
    }
    
    func itemBody(_ text: String) -> some View{
        ZStack{
            Rectangle()
                .stroke(style: .init(lineWidth: 3, lineCap: .round))
                .aspectRatio(0.75, contentMode: .fit)
            Text(text)
                .font(.system(size: 150, weight: .medium, design: .rounded))
                .contentTransition(.numericText(value: Double(vm.regionNumber)))
        }
    }
    
    func upperButton(_ scale: Int) -> some View{
        Button {
            withAnimation {
                vm.encrement(scale: scale)
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
                vm.decrement(scale: scale)
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
