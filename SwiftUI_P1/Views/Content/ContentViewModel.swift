//
//  ContentViewModel.swift
//  SwiftUI_P1
//
//  Created by Irinka Datoshvili on 23.05.24.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var isIconYellow = false
    
    var backgroundColor: String {
        return isIconYellow ? "YellowBackground" : "BlueBackground"
    }
    
    func toggleIconColor() {
        isIconYellow.toggle()
    }
}
