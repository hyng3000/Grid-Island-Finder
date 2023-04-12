//
//  NodeView.swift
//  GridBFS
//
//  Created by Hamish Young on 13/4/2023.
//

import SwiftUI


struct NodeView: View {

    let node: Node
    
    var body: some View {
        Text(String(node.value))
        .font(.title)
        .frame(width: 30, height: 30)
        .padding()
        .background(node.island ? Color.green : Color.blue)
        .background(in: RoundedRectangle(cornerRadius: 20))
        
    }
    
}

struct NodeView_Previews: PreviewProvider {
    static var previews: some View {
        NodeView(node: Node())
    }
}
