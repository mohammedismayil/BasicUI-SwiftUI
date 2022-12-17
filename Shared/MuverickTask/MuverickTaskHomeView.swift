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
            
//            NavigationLink(destination:MuverickCartView(cart: cart)) {
//                Text("Cart")
//            }
            if #available(iOS 16.0, *) {
                
              
                    List {
                        
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
                                        
                                        //                                    .cornerRadius(5)
                                        //                                    .shadow(radius: 10)
                                            .frame(width: 75, height: 100)
                                    } placeholder: {
                                        Color.white.opacity(1)
                                    }
                               
                                
                                VStack(alignment: .leading){
                                    
                                    VStack(alignment: .leading){
                                        Text(item.name)
                                    }
                                    
                                    
                                    HStack(alignment: .center){
                                        Text("$25.50")
                                        Spacer()
                                        Text("Add cart")
                                            .foregroundColor(.white)
                                            .frame(height: 35)
                                            .padding(.leading)
                                            .padding(.trailing)
                                            .background(Color(.blue))
                                            .cornerRadius(5).onTapGesture {
                                                
                                                if !cart.contains(where: {$0.id == item.id}){
                                                    self.cart.append(item)
                                                }
                                                
                                                
                                                
                                                
                                            }
                                    }
                                    
                                }
                                
                                Spacer()
                            }
//                            .frame(width: UIScreen.main.bounds.width , height: 100, alignment: .center).padding(10).background(Color.gray)
                            
                        }.listRowBackground(Color.green)
                            .listRowInsets( EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0) )
                        
                    }.listRowSeparator(.hidden).scrollContentBackground(.hidden).background(Color.yellow)
               
                
            }else {
                // Fallback on earlier versions
            }
        }
            
            

    }
}

struct MuverickTaskHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MuverickTaskHomeView()
    }
}
