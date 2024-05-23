//
//  ContentView.swift
//  SwiftUI_P1
//
//  Created by Irinka Datoshvili on 22.05.24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    let items: [ListItemData] = sampleItems
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Svibti Iuai Eksersaisi")
                .font(.system(size: 34, weight: .bold))
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 22, leading: 18, bottom: 0, trailing: 0))
            
            HStack(spacing: 13) {
                SongView()
                VStack(spacing: 10) {
                    ChatView()
                    NewsView()
                }
            }
            .padding(EdgeInsets(top: 7, leading: 12, bottom: 30, trailing: 23))
            
            List {
                Section {
                    ForEach(items, id: \.title) { item in
                        ListItemView(data: item)
                            .alignmentGuide(.listRowSeparatorLeading) { _ in
                                0
                            }
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                            .listRowSeparator(.visible, edges: .all)
                            .listRowSeparatorTint(.gray)
                    }
                    .listRowBackground(Color.clear)
                }
                .listSectionSeparator(.hidden, edges: .all)
            }
            .listStyle(.plain)
        }
        .overlay(
            Button(action: {
                viewModel.toggleIconColor()
            }) {
                Image("arrow")
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .background(Color(viewModel.backgroundColor))
                    .clipShape(Circle())
                    .padding(.trailing, 10)
            },
            alignment: .bottomTrailing
        )
        .background(Color(red: 25/255, green: 37/255, blue: 43/255))
    }
}

#Preview {
    ContentView()
}
