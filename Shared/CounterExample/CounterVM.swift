//
//  CounterVM.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 30/07/22.
//

import UIKit

 class CounterVM: ObservableObject {

    
    @Published var count = 0

        func incrementCounter() {
            count += 1
        }
}
