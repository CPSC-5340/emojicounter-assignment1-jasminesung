//
//  ContentView.swift
//  EmojiCounter
//
//  Created by Jasmine Sung on 16/3/2024.
//

import SwiftUI

struct ContentView: View {
    var emojiList = ["🌈", "🩵", "🍀", "☀️", "🌸"]
    var body: some View {
        NavigationView {
            List {
                ForEach(emojiList, id: \.self) {
                    emoji in ListItem(emoji: emoji)
                }
            }.navigationTitle("Emoji Counter")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ListItem: View {
    @State var counter = 0
    var emoji: String
    var body: some View {
        HStack {
            Text("\(emoji) Counter: \(counter)")
            Spacer()
            Image(systemName: "plus")
                .padding(5)
                .border(.cyan)
                .cornerRadius(3)
                .imageScale(.large)
                .onTapGesture {
                    counter += 1
                }
            Image(systemName: "minus")
                .padding(10)
                .border(.pink)
                .cornerRadius(3)
                .imageScale(.large)
                .onTapGesture {
                    counter -= 1
                }
        }
    }
}

#Preview {
    ContentView()
}
