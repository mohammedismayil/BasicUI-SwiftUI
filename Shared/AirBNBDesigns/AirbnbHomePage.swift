//
//  AirbnbHomePage.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 21/06/22.
//

import SwiftUI

struct AirbnbHomePage: View {
    
    @State private var location: String = "Tim"
    var body: some View {
//        ZStack(alignment: .top){
           
            
            HStack{
                TextField("Anywhere", text: $location)
                    .padding(.all)
                    .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                    
            }.background(Color.white).cornerRadius(20)
            VStack{
                Image(uiImage: UIImage(named: "rooms1")!).resizable()
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.35, alignment: .center)
            } .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.35, alignment: .center)
            
            
            Text("Explore Airbnb")
        
        HStack{
            HStack{
                Image(uiImage: UIImage(named: "rooms1")!).resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(10)
                
                Text("Stays")
            }.frame(width: UIScreen.screenWidth / 2, height: 50, alignment: .leading)
                .shadow(color: .red, radius: 5, x: 20, y: 20)
            
            HStack{
                Image(uiImage: UIImage(named: "rooms1")!).resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(10)
                
                Text("Experiences")
            }.frame(width: UIScreen.screenWidth / 2, height: 50, alignment: .leading)
            .shadow(radius: 5)
        }.padding(.horizontal, 20)
        
            
            
            
           
           
//        }
       
        
        Spacer()
        
    }
}

struct AirbnbHomePage_Previews: PreviewProvider {
    static var previews: some View {
        AirbnbHomePage()
    }
}
