//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mateus on 13/04/24.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis: Array<String> = ["🥸", "💖", "👻", "😍", "🧐", "🍁", "🪐", "🍄", "🍕", "🎭", "🏄🏻‍♂️"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
