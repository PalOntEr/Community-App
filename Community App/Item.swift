//
//  Item.swift
//  Community App
//
//  Created by MaciOSLabAir on 01/04/25.
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
