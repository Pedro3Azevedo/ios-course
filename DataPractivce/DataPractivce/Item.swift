//
//  Item.swift
//  DataPractivce
//
//  Created by pedro azevedo on 08/01/2026.
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
@Model
final class Todo {
    var title: Date
    
    init(tilte: Date) {
        self.title = title
    }
}
