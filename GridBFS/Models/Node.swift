//
//  Node.swift
//  GridBFS
//
//  Created by Hamish Young on 13/4/2023.
//

import Foundation

struct Node: Identifiable, Hashable {
    let value: String
    var island: Bool = false
    let id: String = UUID().uuidString
    
    init() {
        self.value = String(Int.random(in: 0...1))
    }
    
    init(value: String){
        self.value = value
    }
    
        
    static func makeNodeGrid(rows: Int, columns: Int) -> [[Node]] {
        var grid: [[Node]] = []
        
        for _ in 0..<rows {
            var temp: [Node] = []
            for _ in 0..<columns {
                temp.append(Node())
            }
            grid.append(temp)
        }
        return grid
    }
    
    
}
