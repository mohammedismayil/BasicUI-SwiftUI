//
//  VerifyRecoveryPhrase.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 07/05/22.
//

import SwiftUI

struct VerifyRecoveryPhrase: View {
//    var count = 12
//    let data = (1...count).map { "picture \($0)" }
//
    @State  var data = ["picture","moon"]
    @State var isClicked = true
    var rows: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        Text("Verify Recovery Phrase")
        
        Text("Tap the words to put them next to each other in the correct order")
        
        
        VStack{
            
            LazyVGrid(columns: rows,alignment: .center, spacing: 0) {
                            ForEach(data, id: \.self) { item in
                                Text(item).background(Color.gray).cornerRadius(5).padding().onTapGesture() {
                                    print("ih")
                                }
                            }
                        }
            
            Text(isClicked ? "i am clicked" :  "i am not clicked")
            
            Text("click Here").onTapGesture {
                isClicked.toggle()
                data.append("newone\(data.count)")
            }
                        
                 
                    
        }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/3, alignment: .center)
    }
}

struct VerifyRecoveryPhrase_Previews: PreviewProvider {
    static var previews: some View {
        VerifyRecoveryPhrase()
    }
}
