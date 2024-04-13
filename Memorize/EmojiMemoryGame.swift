//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mateus on 13/04/24.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis: Array<String> = ["🥸", "💖", "👻", "😍", "🧐", "🍁", "🪐", "🍄", "🍕", "🎭", "🏄🏻‍♂️"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
