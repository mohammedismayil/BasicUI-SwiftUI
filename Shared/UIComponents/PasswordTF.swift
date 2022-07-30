//
//  PasswordTF.swift
//  BasicUI-SwiftUI (iOS)
//
//  Created by Mohammed Ismayil on 09/07/22.
//

import SwiftUI

struct PasswordTF: View {
    @Binding  var isSecured: Bool
    @Binding  var password :String
    var body: some View {
        HStack {
            Text("PASSWORD").tracking(1.5).font(.subheadline)
            Spacer()
           
        }
        
       
            if isSecured {
                
                HStack{
                    SecureField("title", text: $password)
    Button(action: {
                    isSecured.toggle()
                }) {
                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                        .accentColor(.gray)
                }
                }
                              
                            } else {
                                
                                HStack{
                                    TextField("title", text: $password)
                                    Button(action: {
                                                    isSecured.toggle()
                                                }) {
                                                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                                        .accentColor(.gray)
                                                }
                                }
                              
                            }
    }
}

//struct PasswordTF_Previews: PreviewProvider {
//    static var previews: some View {
//        PasswordTF(isSecured: true, password: "")
//    }
//}
