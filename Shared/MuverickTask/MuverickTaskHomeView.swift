//
//  MuverickTaskHomeView.swift
//  BasicUI-SwiftUI (iOS)
//
//  Created by Mohammed Ismayil on 17/12/22.
//

import SwiftUI


class Product:Identifiable{
    
    
    var name = ""
    var id = 0
    
    init(name: String = "", id: Int = 0) {
        self.name = name
        self.id = id
    }
}
struct MuverickTaskHomeView: View {
    
    var products = [Product(name: "iphone11",id: 1),Product(name: "iphone12",id: 2),Product(name: "iphone13",id: 3),Product(name: "iphone14",id: 4)]
    
    @State var cart = [Product]()
    
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationView{
            
             
            List {
                NavigationLink(destination:MuverickCartView(cart: cart)) {
                    Text("Cart")
                               }
                ForEach(products) { item in
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

    }
}

struct MuverickTaskHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MuverickTaskHomeView()
    }
}
