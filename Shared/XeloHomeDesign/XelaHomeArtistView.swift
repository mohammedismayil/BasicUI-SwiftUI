//
//  XelaHomeArtistView.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 01/06/22.
//

import SwiftUI

struct XelaHomeArtistView: View {
    var body: some View {
        VStack{
            
//            https://cdn.dribbble.com/users/2403087/screenshots/16477295/media/1e8c33fe9b4faae773673420d91578ce.png?compress=1&resize=1200x900&vertical=top
            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/8/8f/Ed_Sheeran_%288508826072%29.jpg")) { image in
                image
                    .resizable()
                    
                    .cornerRadius(25)
                    .shadow(radius: 10)
                    .frame(width: 75, height: 75)
                } placeholder: {
                    Color.white.opacity(1)
                }
               
                Text("EdsheeranEdsheeran")
        }.frame(width: 100, height: 120)
    }
}

struct XelaHomeArtistView_Previews: PreviewProvider {
    static var previews: some View {
        XelaHomeArtistView()
    }
}
