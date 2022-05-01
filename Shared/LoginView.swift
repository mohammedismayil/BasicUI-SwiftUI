//
//  LoginView.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 01/05/22.
//

import SwiftUI

struct LoginView: View {
    @State  var username = ""
    @State  var password = ""
    @State private var isSecured: Bool = true
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(uiImage: UIImage(named: "loginBG")!).resizable()
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.4, alignment: .center)
            }
            
            
            VStack(alignment: .leading) {
                Text("Login").fontWeight(.medium).font(.system(size: 30))
                Text("EMAIL ADDRESS").tracking(1.5).font(.subheadline)
                
                HStack {
                    TextField("Username", text: $username,onEditingChanged: { changed in
                        print("Changed")
                        print("You are typing: " + self.username)
                      }, onCommit: {
                        print("Commited")
                          print("You are typing222: " + self.username)
                      })
                    Image(systemName: "checkmark.circle") .renderingMode(.template)
                        .foregroundColor(.green)
                }
                
                HStack {
                    Text("PASSWORD").tracking(1.5)
                    Spacer()
                    Button(action: {
                                    isSecured.toggle()
                                }) {
                                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                        .accentColor(.gray)
                                }
                }
                
               
                    if isSecured {
                                        SecureField("title", text: $password)
                                    } else {
                                        TextField("title", text: $password)
                                    }
                    
                HStack(alignment: .center){
                    Text("Forgot Password?")
                }
                
             
                
            }.padding(30)
            
           Spacer()
           
        }
        
        
    }
}


extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
