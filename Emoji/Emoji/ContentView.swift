//
//  ContentView.swift
//  Emoji
//
//  Created by Rafal Pawelec on 07/07/2023.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    
    case 😀,🐶,🍏,📱,🖤,🌮
    
}

struct ContentView: View {
    @State var selection: Emoji = .🍏
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emocji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
            }
            .navigationTitle("Emoji Lovers: ")
            .padding()

        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
