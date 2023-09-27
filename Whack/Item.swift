//
//  Item.swift
//  Whack
//
//  Created by Alice Di Nunno on 28/09/2023.
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
