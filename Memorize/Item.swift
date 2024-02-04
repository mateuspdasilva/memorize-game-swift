//
//  Item.swift
//  Memorize
//
//  Created by Macintosh on 04/02/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}