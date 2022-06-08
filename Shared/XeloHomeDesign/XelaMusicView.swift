//
//  XelaMusicView.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 01/06/22.
//

import SwiftUI

struct XelaMusicView: View {
    var body: some View {
        
        ScrollView{
            Text("Browse Music")
            
          
            XeloHomeArtistSection()
            XeloHomeNewReleasesSection()
            XHTopweeklySection()
            XeloHomeNewReleasesSection()
            XeloHomeNewReleasesSection()
           Spacer()
        }
       
    }
}

struct XelaMusicView_Previews: PreviewProvider {
    static var previews: some View {
        XelaMusicView()
    }
}
