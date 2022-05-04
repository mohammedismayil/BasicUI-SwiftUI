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
                
                
                VStack(alignment: .leading) {
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
                } .padding(.top, 20).padding(.bottom,10)
              
                VStack{
                    HStack {
                        Text("PASSWORD").tracking(1.5).font(.subheadline)
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
                }
                
                    
                VStack(alignment: .center){
                    
                    HStack(alignment: .center){
                        Spacer()
                        Text("Forget Password?")
                        Spacer()
                    }
                   
                }.padding(.top,15)
                
                Spacer()
                
                HStack(spacing: 20) {
                     Button("Signin", action: { print("login")})
                            .buttonStyle(PrimaryButtonStyle())
                     
                }.padding(.top,10)

                
                VStack(alignment: .center){
                    
                    HStack(spacing: 5) {
                        Text("Don't have an account?").fontWeight(.medium).font(.system(size: 15))
                        Text("Create new account.").fontWeight(.medium).font(.system(size: 15)).foregroundColor(Color(hex: "#e85b37"))
                         
                    }.padding(.top,20) .frame(maxWidth: .infinity, maxHeight: 50)
                  
                   
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
struct PrimaryButtonStyle: ButtonStyle {

var backgroundColor: Color = Color(hex: "#e85b37")
var textColor: Color = Color.white
var height: CGFloat = 50
var cornerRadius: CGFloat = 5
var fontSize: CGFloat = 15
var disabled: Bool = false
var textSidePadding: CGFloat = 0
var weight: Font.Weight = .semibold

func makeBody(configuration: Configuration) -> some View {
    configuration.label
        .padding([.leading, .trailing], textSidePadding)
        .frame(maxWidth: .infinity, maxHeight: height)
        .background(disabled ? .gray : backgroundColor)
        .foregroundColor(textColor)
        .cornerRadius(cornerRadius)
        .font(.system(size: fontSize, weight: weight, design: .default))
//        .scaleEffect(configuration.isPressed ? 1.2 : 1)
//        .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
