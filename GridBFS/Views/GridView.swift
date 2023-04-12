//
//  GridView.swift
//  GridBFS
//
//  Created by Hamish Young on 13/4/2023.
//

import SwiftUI

struct GridView: View {

    let grid: [[Node]]

    var body: some View {
        VStack {
            ForEach(grid, id: \.self) { row in
                HStack{
                    ForEach(row, id: \.self) { node in
                        NodeView(node: node)
                    }
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        
        GridView(grid: Node.makeNodeGrid(rows: 3, columns: 3))
    }
}
