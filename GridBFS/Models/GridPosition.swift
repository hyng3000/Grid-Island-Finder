//
//  GridPosition.swift
//  GridBFS
//
//  Created by Hamish Young on 13/4/2023.
//

import Foundation

struct GridPos: Hashable {

    let first: Int
    let second: Int
    
    init(_ first: Int, _ second: Int) {
        self.first = first
        self.second = second
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(self.first)
        hasher.combine(self.second)
    }

    static func ==(lhs: GridPos, rhs: GridPos) -> Bool {
        return lhs.first == rhs.first && lhs.second == rhs.second
    }
}
