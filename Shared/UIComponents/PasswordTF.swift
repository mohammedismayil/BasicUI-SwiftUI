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
}

//struct PasswordTF_Previews: PreviewProvider {
//    static var previews: some View {
//        PasswordTF(isSecured: true, password: "")
//    }
//}
