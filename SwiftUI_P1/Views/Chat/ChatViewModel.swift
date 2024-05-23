//
//  ChatViewModel.swift
//  SwiftUI_P1
//
//  Created by Irinka Datoshvili on 23.05.24.
//

import Foundation

final class ChatViewModel: ObservableObject {
    @Published var isPurpleBackground = false
    
    var backgroundColor: String {
        return isPurpleBackground ? "PurpleBackground" : "OrangeBackground"
    }
    
    func toggleBackground() {
        isPurpleBackground.toggle()
    }
}
