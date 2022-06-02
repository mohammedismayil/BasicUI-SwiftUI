//
//  XHNewReleasesCell.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 02/06/22.
//

import SwiftUI

struct XHNewReleasesCell: View {
    var body: some View {
        VStack{
            
//            https://cdn.dribbble.com/users/2403087/screenshots/16477295/media/1e8c33fe9b4faae773673420d91578ce.png?compress=1&resize=1200x900&vertical=top
            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/8/8f/Ed_Sheeran_%288508826072%29.jpg")) { image in
                image
                    .resizable()
                    
                    .cornerRadius(25)
                    .shadow(radius: 10)
                    .frame(width: 150, height: 150)
                } placeholder: {
                    Color.white.opacity(1)
                }
               
             
        }.frame(width: 150, height: 150).padding(.horizontal, 10)
    }
}

struct XHNewReleasesCell_Previews: PreviewProvider {
    static var previews: some View {
        XHNewReleasesCell()
    }
}
