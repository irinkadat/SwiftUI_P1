//
//  SongView.swift
//  SwiftUI_P1
//
//  Created by Irinka Datoshvili on 22.05.24.
//

import SwiftUI

struct SongView: View {
    @ObservedObject var viewModel: SongViewModel
    
    init(viewModel: SongViewModel = SongViewModel()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button(action: {
                viewModel.toggleAlternateText()
            }) {
                Circle()
                    .fill(Color("IconFrameBackground"))
                    .frame(width: 32, height: 32)
                    .overlay(
                        Image("mic")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    )
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 0))
            }
            
            Text("ჯუზონები და რამე")
                .foregroundColor(.white)
                .font(.system(size: 9))
                .padding(EdgeInsets(top: 2, leading: 16, bottom: 0, trailing: 0))
            
            Spacer().frame(height: 52)
            
            Text(viewModel.songText)
                .foregroundColor(.white)
                .font(.system(size: 17))
                .fontWeight(.bold)
                .lineLimit(4)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 20, trailing: 36))
        }
        .frame(width: 170, height: 232, alignment: .topLeading)
        .background(Color("YellowBackground"))
        .cornerRadius(18)
        .overlay(
            Image("guitar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 74, height: 182)
                .padding([.bottom, .trailing], 0),
            alignment: .bottomTrailing
        )
    }
}

#Preview {
    SongView()
}
