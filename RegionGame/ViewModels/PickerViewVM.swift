//
//  PickerViewVM.swift
//  RegionGame
//
//  Created by Андрей Степанов on 01.11.2024.
//

import SwiftUI

extension PickerView {
    @Observable
    class ViewModel {
        private(set) var regionNumber: Int = 52
        
        func decrement(scale: Int){
            if regionNumber - scale > 0 {
                regionNumber -= scale
            }
        }
        
        func encrement(scale: Int){
            if regionNumber + scale < 100 {
                regionNumber += scale
            }
        }
        
        func currentRegionName() -> String {
            guard let region = regions[regionNumber] else {
                return "Unknown"
            }
            return region.name
        }
    }
}
