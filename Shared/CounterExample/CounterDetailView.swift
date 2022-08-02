//
//  CounterDetailView.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 31/07/22.
//

import SwiftUI

struct CounterDetailView: View {
    @EnvironmentObject var enVM : CounterVM
    @ObservedObject var vm = CounterVM()
    var body: some View {
        Text("Counter Details")
        
        Text("\(vm.count)")
        Text("Environmental count\(enVM.count)")
        
        
        Button("Increment") {
            vm.incrementCounter()
            enVM.incrementCounter()
        }
        Button("Decrement") {
            vm.decrementCounter()
            enVM.decrementCounter()
        }
    }
}

struct CounterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CounterDetailView()
    }
}
