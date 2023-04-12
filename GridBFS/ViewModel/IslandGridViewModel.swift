//
//  IslandGridViewModel.swift
//  GridBFS
//
//  Created by Hamish Young on 13/4/2023.
//

import Foundation
import Collections

class IslandGridSolver: ObservableObject {


    @Published var grid: [[Node]]
    @Published var islands = 0
    
    var visited = Set<GridPos>()
    
    init() {
        self.grid = Node.makeNodeGrid(rows: 4, columns: 5)
        }
        
    func resetGrid() {
        self.grid = Node.makeNodeGrid(rows: 4, columns: 5)
        self.islands = 0
        self.visited.removeAll()
    }
        
    func solve() {
    
        let rowLen = grid.count
        let colLen = grid[0].count
        
        for row in  0..<rowLen {
            for col in 0..<colLen {
                if grid[row][col].value == "1" && !visited.contains(GridPos(row, col))  {
                    breadthFirstSearch(GridPos(row, col), rowLen, colLen)
                    grid[row][col].island = true
                    islands += 1
                }
            }
        }
    }
    

    private func breadthFirstSearch(_ start: GridPos, _ rowLen: Int, _ colLen: Int) {
        var que = Deque<GridPos>()
        
        visited.insert(start)
        que.append(start)
        let neighbours = [(1,0), (-1,0), (0,1), (0,-1)]
            
        while !que.isEmpty {
            let pos = que.popFirst()
            for (x, y) in neighbours {
                
                let r = (pos!.first + x) >= 0 ? pos!.first + x : 0
                let c = (pos!.second + y) >= 0 ? pos!.second + y : 0
                    
                if r < rowLen && c < colLen &&
                    grid[r][c].value == "1" &&
                    !visited.contains(GridPos(r, c)) {
                    
                    que.append(GridPos(r, c))
                    visited.insert(GridPos(r, c))
                    grid[r][c].island = true
                }
            }
        }
    }
    
    
}
