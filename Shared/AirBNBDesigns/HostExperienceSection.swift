//
//  HostExperienceSection.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 22/06/22.
//

import SwiftUI

struct HostExperienceSection: View {
    let data = (1...4).map { "Item \($0)" }

       let columns = [
           GridItem(.adaptive(minimum: 150))
       ]
    var body: some View {
        
        HStack{
            Text("Host Experiences").padding(.leading, 10)
            Spacer()
            Text("Show all").padding(.trailing, 10)
        }
       
        LazyVGrid(columns: columns, spacing: 10) {
                       ForEach(data, id: \.self) { item in
                           
                           VStack{
                               Image(uiImage: UIImage(named: "rooms1")!).resizable()
                                   .frame(width: 180, height: 150, alignment: .center)
                                   .cornerRadius(15).padding([.top,.bottom], 10).padding(.leading,10)
                               Text("Entertainment-Madurai")
                               Text("Unique experience")
                           }
                          
                       }
                   }
                   .padding(.horizontal)
    }
}

struct HostExperienceSection_Previews: PreviewProvider {
    static var previews: some View {
        HostExperienceSection()
    }
}
