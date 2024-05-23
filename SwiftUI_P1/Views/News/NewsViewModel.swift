//
//  NewsViewModel.swift
//  SwiftUI_P1
//
//  Created by Irinka Datoshvili on 23.05.24.
//

import Foundation

final class NewsViewModel: ObservableObject {
    @Published var isBlueBackground = false
    
    var backgroundColor: String {
        return isBlueBackground ? "PinkBackground" : "GreenBackground"
    }
    
    func toggleBackground() {
        isBlueBackground.toggle()
    }
}
