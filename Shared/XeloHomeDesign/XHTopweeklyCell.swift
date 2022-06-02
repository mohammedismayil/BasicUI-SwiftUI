//
//  XHTopweeklyCell.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 02/06/22.
//

import SwiftUI

struct XHTopweeklyCell: View {
    var body: some View {
        HStack{
            Text("1").padding(.leading, 5)
//            https://cdn.dribbble.com/users/2403087/screenshots/16477295/media/1e8c33fe9b4faae773673420d91578ce.png?compress=1&resize=1200x900&vertical=top
            
            Image(systemName: "heart.fill").padding(.horizontal, 5)
          
            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/8/8f/Ed_Sheeran_%288508826072%29.jpg")) { image in
                image
                    .resizable()
                    
                    .cornerRadius(5)
                    .shadow(radius: 10)
                    .frame(width: 50, height: 50)
                } placeholder: {
                    Color.white.opacity(1)
                }
            
            VStack(alignment: .leading){
                Text("Baby One More Time").bold()
                Text("Hedwig and the angry inch")
            }
              Spacer()
            Image(systemName: "heart.fill").padding(.trailing, 20)
        }
    }
}

struct XHTopweeklyCell_Previews: PreviewProvider {
    static var previews: some View {
        XHTopweeklyCell()
    }
}
