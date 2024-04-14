//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Macintosh on 04/02/24.
//

import SwiftUI
import SwiftData

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
