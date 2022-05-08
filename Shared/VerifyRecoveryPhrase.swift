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
    
    @State  var correctOrderData = ["picture","moon","solana","mother","father","cook","lick","elephant","mars","mate","cell","tube"]
    @State  var data = ["picture","moon","solana","mother","father","cook","lick","elephant","mars","mate","cell","tube"]
    
    @State  var selectedOrderData  : [String] = []
    
    
   
    @State var isClicked = true
//    var rows: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    var items: [GridItem] {
        Array(repeating: .init(.flexible(minimum: 75, maximum: 90)), count: 4)
    }
    
    func checkisCorrectOrder()-> Bool{
        
        var isTrue = true
        for item in 0..<selectedOrderData.count {
            if selectedOrderData[item] == correctOrderData[item] {
                isTrue = true
            }else{
                isTrue = false
            }
        }
        
        print("Condition has been checked")
        
        return isTrue
    }
    var body: some View {
        Text("Verify Recovery Phrase")
        
        Text("Tap the words to put them next to each other in the correct order")
        
        
        VStack{
            LazyVGrid(columns: items,alignment: .center, spacing: 0) {
                ForEach(selectedOrderData.indices, id: \.self) { item in
                                
                                HStack{
                                    Text(selectedOrderData[item]).padding(.horizontal, 5)
                                    
                                }.background(Color.gray).cornerRadius(5).padding().onTapGesture(){
                                    
                                    data.append(selectedOrderData[item])
                                    selectedOrderData.remove(at: item)
                                    print(item)
                                    print("hi")
                                }
                                
                            }
                        }.padding(.horizontal)
            
            checkisCorrectOrder() ? Text("correct") : Text("Invalid order")
            
        }.overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(style: StrokeStyle(lineWidth: 4, dash: [15.0]))
        ).frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/3, alignment: .top).padding(30)
        
     
            
        ScrollView{
            VStack{
                
                LazyVGrid(columns: items,alignment: .center, spacing: 10) {
                    ForEach(data.indices, id: \.self) { item in
                                    
                                    HStack{
                                        Text(data[item]).padding(.horizontal, 25).padding(.vertical,5)
                                        
                                    }.background(Color.gray).cornerRadius(5).onTapGesture(){
                                        
                                       
                                        selectedOrderData.append(data[item])
                                        data.remove(at: item)
                                        print(item)
                                    }
                                    
                                }
                            }.padding(.horizontal)
                
               
                            
                     
                        
            }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/3, alignment: .top)
            
        }
        Text(isClicked ? "i am clicked" :  "i am not clicked")
        
        Text("click Here").onTapGesture {
            isClicked.toggle()
            data.append("newone\(data.count)")
        }
    }
}

struct VerifyRecoveryPhrase_Previews: PreviewProvider {
    static var previews: some View {
        VerifyRecoveryPhrase()
    }
}
