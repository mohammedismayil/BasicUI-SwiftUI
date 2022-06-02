//
//  XeloHomeArtistSection.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 02/06/22.
//

import SwiftUI

struct XeloHomeArtistSection: View {
    var body: some View {
        HStack{
           
            Text("Popular artists").bold().padding(.leading, 10)
            Spacer()
        }
       
      
       
        ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    XelaHomeArtistView()
                    XelaHomeArtistView()
                    XelaHomeArtistView()
                    XelaHomeArtistView()
                    XelaHomeArtistView()
                    XelaHomeArtistView()
                }.padding(.leading, 10)
               
            }
           
    }
}

struct XeloHomeArtistSection_Previews: PreviewProvider {
    static var previews: some View {
        XeloHomeArtistSection()
    }
}
