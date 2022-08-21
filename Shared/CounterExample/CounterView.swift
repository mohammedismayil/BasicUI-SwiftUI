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
                
//                Text("Environmental count\(enVM.count)")
                
                Button("Increment") {
                    vm.incrementCounter()
                    enVM.incrementCounter()
                }
                Button("Decrement") {
                    vm.decrementCounter()
                    enVM.decrementCounter()
                }
               checkDestination()
            }
        }
        
       
    }
    @ViewBuilder
    func checkDestination() -> some View{
        
        if (enVM.count > 5) {
            NavigationLink(destination:CounterDetail2View()) {
                               Text("Move to Detail")
                           }
        }else{
            NavigationLink(destination:CounterDetailView()) {
                               Text("Move to Detail")
                           }
        }
       
    }
    
    
    func observeVMChanges(){
        print("Observing \(vm.count)")
    }
    
    func getCounterValue() -> Int{
        
        print("Observing in CounterView \(vm.count)")
        return vm.count
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView().environmentObject(CounterVM())
    }
}
