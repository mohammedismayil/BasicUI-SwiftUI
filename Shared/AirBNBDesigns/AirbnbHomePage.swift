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
           
        ScrollView{
            HStack{
                TextField("Anywhere", text: $location)
                    .padding(.all)
                    .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                    
            }.background(Color.white).cornerRadius(20)
            VStack{
                Image(uiImage: UIImage(named: "rooms1")!).resizable()
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.35, alignment: .center)
            } .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.35, alignment: .center)
            
        HStack{
            Text("Explore Airbnb").padding(.leading,15)
            Spacer()
        }
           
        
        HStack{
            HStack{
                Image(uiImage: UIImage(named: "rooms1")!).resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .cornerRadius(15).padding([.top,.bottom], 10).padding(.leading,10)
                
                Text("Stays")
            }.frame(width: (UIScreen.screenWidth / 2)-15 , height: 80, alignment: .leading)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2).background(Color.gray).cornerRadius(15)
            
            HStack{
                Image(uiImage: UIImage(named: "rooms1")!).resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .cornerRadius(15).padding([.top,.bottom], 10).padding(.leading,10)
                
                Text("Experiences")
            }.frame(width: (UIScreen.screenWidth / 2)-15 , height: 80, alignment: .leading)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2).background(Color.gray).cornerRadius(15)
           
        }
        HostExperienceSection()
        
            HostExperienceSection()
            HostExperienceSection()
            
           
           
//        }
       
        
//        Spacer()
        
        }.padding(.bottom, 100)
            
    }
}

struct AirbnbHomePage_Previews: PreviewProvider {
    static var previews: some View {
        AirbnbHomePage()
    }
}
