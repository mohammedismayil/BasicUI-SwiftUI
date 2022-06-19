//
//  WelcomeScreen.swift
//  BasicUI-SwiftUI (iOS)
//
//  Created by Mohammed Ismayil on 19/06/22.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
               
                VStack{
                    Image(uiImage: UIImage(named: "WelcomeScreenBG")!).resizable()
                        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.5, alignment: .center)
                } .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.5, alignment: .center)
               
                
                VStack{
                    Text("Brand new way to invest").foregroundColor(.white).font(.system(size: 60)).fontWeight(.bold).multilineTextAlignment(.center) .minimumScaleFactor(0.2)
                    Text("Track market positions in realtime and make your investment easily").foregroundColor(.gray).font(.system(size: 20)).padding(.top, 1)
                    
                   
                        Button("Get Started") {
                            print("Move to next screen")
                        }.frame(width: UIScreen.screenWidth*0.8, height: 60, alignment: .center)
                        .font(.system(size: 20, weight: Font.Weight.bold))
                        .background(Color(UIColor.white))
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .padding(.top, 20)
                   
                }
//                .background(Color.white)
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.5, alignment: .center)
                
                
               
                
            }
            
            
        }
        
        
        
       
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
