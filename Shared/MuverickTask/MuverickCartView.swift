//
//  MuverickCartView.swift
//  BasicUI-SwiftUI (iOS)
//
//  Created by Mohammed Ismayil on 17/12/22.
//

import SwiftUI

struct MuverickCartView: View {
    
    @State  var cart = [Product]()
    var body: some View {
        Text("Cart elements")
        
        List {
           
                Text("Cart")
                           }
            ForEach(cart) { item in
//                NavigationLink {
//
//                } label: {
//                    Text("Item at")
//                }
                
                
               
                
                HStack{
                    
                    AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/8/8f/Ed_Sheeran_%288508826072%29.jpg")) { image in
                        image
                            .resizable()
                            
                            .cornerRadius(5)
                            .shadow(radius: 10)
                            .frame(width: 50, height: 50)
                        } placeholder: {
                            Color.white.opacity(1)
                        }
                    Text(item.name)
                    
                    Text("Add to cart").padding()
                        .background(.purple)
                        .cornerRadius(5).onTapGesture {
                            
                            if !cart.contains(where: {$0.id == item.id}){
                                self.cart.append(item)
                            }
                            
                            
                            
                            
                        }
                }.frame(width: UIScreen.main.bounds.width, height: 100, alignment: .top)
               
            }
            
       
    }
}

struct MuverickCartView_Previews: PreviewProvider {
    static var previews: some View {
        MuverickCartView()
    }
}
