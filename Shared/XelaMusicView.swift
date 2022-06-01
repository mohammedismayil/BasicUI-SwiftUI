//
//  XelaMusicView.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 01/06/22.
//

import SwiftUI

struct XelaMusicView: View {
    var body: some View {
        Text("Browse Music")
        
      
        HStack{
           
            Text("Popular artists").bold().padding(.leading, 10)
            Spacer()
        }
       
      
       
            ScrollView(.horizontal){
                HStack{
                    XelaHomeArtistView()
                    XelaHomeArtistView().padding()
                    XelaHomeArtistView().padding()
                    XelaHomeArtistView().padding()
                    XelaHomeArtistView().padding()
                    XelaHomeArtistView().padding()
                }.padding(.leading, 10)
               
            }
           
      
        
       
    }
}

struct XelaMusicView_Previews: PreviewProvider {
    static var previews: some View {
        XelaMusicView()
    }
}
