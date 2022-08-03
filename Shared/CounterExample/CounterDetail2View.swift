//
//  CounterDetail2View.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 03/08/22.
//

import SwiftUI

struct CounterDetail2View: View {
    @EnvironmentObject var enVM : CounterVM
    @ObservedObject var vm = CounterVM()
    var body: some View {
        Text("Counter Details")
        
        Text("\(getCounterValue())")
        Text("Environmental count\(enVM.count)")
        
        
        Button("Increment") {
            
            //even after incrementing this scoped counter to 1 it again changed to 0 . Why?
            //culprit is  enVM.incrementCounter() change the global environment variable counter ,so CounterView get rebuilded again ,hence CounterDetailView got initiated again , when initiating CounterDetailView the local vm value again initialised to zero
            //hours of debuggin man
            vm.incrementCounter()
            enVM.incrementCounter()
        }
        Button("Decrement") {
            vm.decrementCounter()
            enVM.decrementCounter()
        }
        
        NavigationLink(destination: CounterDetail3View().environmentObject(enVM)) {
                           Text("Move to Detail")
                       }
    }
    
    func getCounterValue() -> Int{
        
        print("Observing in CounterDetail2View \(vm.count)")
        return vm.count
    }
}

struct CounterDetail2View_Previews: PreviewProvider {
    static var previews: some View {
        CounterDetail2View()
    }
}
