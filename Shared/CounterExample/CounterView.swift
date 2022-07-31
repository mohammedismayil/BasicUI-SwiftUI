//
//  CounterView.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 30/07/22.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject var vm = CounterVM()
    var body: some View {
        NavigationView{
            VStack{
                Text("Counter View")
                
                
                Text("\(vm.count)")
                
                Button("Increment") {
                    vm.incrementCounter()
                }
                Button("Decrement") {
                    vm.decrementCounter()
                }
                NavigationLink(destination: CounterDetailView(vm: vm)) {
                                   Text("Do Something")
                               }
            }
        }
        
       
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
