//
//  CounterDetailView.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 31/07/22.
//

import SwiftUI

struct CounterDetailView: View {
    
    @ObservedObject var vm = CounterVM()
    var body: some View {
        Text("Counter Details")
        
        Text("\(vm.count)")
    }
}

struct CounterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CounterDetailView()
    }
}
