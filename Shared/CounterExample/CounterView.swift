//
//  CounterView.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 30/07/22.
//

import SwiftUI

struct CounterView: View {
    @EnvironmentObject var enVM : CounterVM
    @ObservedObject var vm = CounterVM()
    var body: some View {
        NavigationView{
            VStack{
                Text("Counter View")
                
                
                Text("\(getCounterValue())")
                
                
                Text("Environmental count\(enVM.count)")
                
                Button("Increment") {
                    vm.incrementCounter()
                    enVM.incrementCounter()
                }
                Button("Decrement") {
                    vm.decrementCounter()
                    enVM.decrementCounter()
                }
                NavigationLink(destination: CounterDetailView().environmentObject(enVM)) {
                                   Text("Move to Detail")
                               }
            }
        }.environmentObject(enVM)
        
       
    }
    
    
    func observeVMChanges(){
        print("Observing \(vm.count)")
    }
    
    func getCounterValue() -> Int{
        
        print("Observing getting \(vm.count)")
        return vm.count
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView().environmentObject(CounterVM())
    }
}
