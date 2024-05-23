//
//  SongViewModel.swift
//  SwiftUI_P1
//
//  Created by Irinka Datoshvili on 23.05.24.
//

import Foundation

class SongViewModel: ObservableObject {
    @Published var isAlternateText = false
    
    var songText: String {
        return isAlternateText ? "Martla ki ara:dd" : "We love property wrappers and closures"
    }
    
    func toggleAlternateText() {
        isAlternateText.toggle()
    }
}
