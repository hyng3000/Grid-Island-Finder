

import SwiftUI
import Collections

struct IslandGridView: View {

    @StateObject var vm = IslandGridSolver()

    var body: some View {
        Spacer()
        GridView(grid: vm.grid)
        Spacer()
        Text("Islands: \(vm.islands)")
        solveButton
        resetButton
        Spacer()
    }
    
    var solveButton: some View {
        Button(
            action: {vm.solve()},
            label: {
                Text("Solve")
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.gray)
                    .background(in: RoundedRectangle(cornerRadius: 20))
            })
        
    }
    
    var resetButton: some View {
        Button(
            action: {vm.resetGrid()},
            label: {
                Text("Rest Grid")
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.gray)
                    .background(in: RoundedRectangle(cornerRadius: 20))
            })
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IslandGridView()
    }
}
