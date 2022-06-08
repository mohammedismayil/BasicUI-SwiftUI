//
//  XHTopweeklySection.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 02/06/22.
//

import SwiftUI

struct XHTopweeklySection: View {
    var body: some View {
        
        
        HStack{
           
            Text("Top Weekly").bold().padding(.leading, 20)
            Spacer()
            Text("View all").foregroundColor(.blue).padding(.trailing, 20)
            
        }.padding(.top,30)
       
      
        ScrollView{
          
        VStack(alignment: .leading){
                    XHTopweeklyCell()
                    XHTopweeklyCell()
                    XHTopweeklyCell()
                    XHTopweeklyCell()
                    XHTopweeklyCell()
            XHTopweeklyCell()
            XHTopweeklyCell()
            XHTopweeklyCell()
            XHTopweeklyCell()
            XHTopweeklyCell()
                    
        }.padding(.leading, 10)
               
           
    }
    }
}

struct XHTopweeklySection_Previews: PreviewProvider {
    static var previews: some View {
        XHTopweeklySection()
    }
}
