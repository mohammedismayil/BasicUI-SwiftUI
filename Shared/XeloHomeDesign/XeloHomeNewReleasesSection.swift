//
//  XeloHomeNewReleasesSection.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 02/06/22.
//

import SwiftUI

struct XeloHomeNewReleasesSection: View {
    var body: some View {
        HStack{
           
            Text("New Releases").bold().padding(.leading, 10)
            Spacer()
        }.padding(.top,20)
       
      
       
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    XHNewReleasesCell()
                    XHNewReleasesCell()
                    XHNewReleasesCell()
                    XHNewReleasesCell()
                    XHNewReleasesCell()
                    
                }.padding(.leading, 10)
               
            }
    }
}

struct XeloHomeNewReleasesSection_Previews: PreviewProvider {
    static var previews: some View {
        XeloHomeNewReleasesSection()
    }
}
