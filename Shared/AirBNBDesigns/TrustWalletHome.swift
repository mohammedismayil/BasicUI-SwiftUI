//
//  TrustWalletHome.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 07/07/22.
//

import SwiftUI

struct TrustWalletHome: View {
    let greenGradientColor: Color = Color(hex: "#1cac8f")
    let bgGrayColor: Color = Color(hex: "#f4f5f7")
   
    var body: some View {
        
      
        
        ZStack{
            
            VStack{
                VStack{
                    
                    VStack{
                        Text("$16789.36").font(.system(size: 35)).padding(.vertical, 5).foregroundColor(.white)
                        Text("Multicoin wallet 1").font(.system(size: 17)).foregroundColor(.white)
                    }.padding([.top,.bottom], 20)
                   
                    HStack{
                        VStack{
                            Image("uploadIcon").resizable()
                                .background(.white).clipShape(Circle()).frame(width: 50, height: 50, alignment: .center)
                            Text("Send").font(.system(size: 12)).foregroundColor(.white)
                        }.padding(.horizontal, 20)
                        VStack{
                            Image("uploadIcon").resizable()
                                .background(.white).clipShape(Circle()).frame(width: 50, height: 50, alignment: .center)
                            Text("Receive").font(.system(size: 12)).foregroundColor(.white)
                        }.padding(.horizontal, 20)
                        VStack{
                            Image("uploadIcon").resizable()
                                .background(.white).clipShape(Circle()).frame(width: 50, height: 50, alignment: .center)
                            Text("Buy").font(.system(size: 12)).foregroundColor(.white)
                        }.padding(.horizontal, 20)
                        
                        
                       
                    }
                    
                }
                .frame(width: UIScreen.screenWidth - 30, height: 240, alignment: .top)
                
                .background(greenGradientColor).clipShape(RoundedRectangle(cornerRadius:18))
                            ScrollView{
                                ForEach(1..<6) {
                                    
                                    row in
                                    HStack{
                                        
                                        Image("bitcoin_logo").resizable().frame(width: 35, height: 35, alignment: .center).padding(.leading, 10)
                                        
                                        VStack(alignment: .leading,content: {
                                            Text("Ethereum").font(.system(size: 13))
                                            Text("$20,950.30").font(.system(size: 13))
                                        })
                                        Spacer()
                                        
                                        Text("1.23565412 BTC").font(.system(size: 15)).padding(.trailing, 10)
                                            
                                        
                                    }.frame(width: UIScreen.screenWidth - 30, height: 70, alignment: .center).background(Color.white).clipShape(RoundedRectangle(cornerRadius:5)).padding(.vertical, 3)
                                    }
                                
                               
                
                            }
                
//                Spacer()
            }
           
    //            .padding(.top, 20).padding([.leading,.trailing,.bottom], 10)
            

                
            Spacer()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(bgGrayColor)
           
        
        
        
    }
}

struct TrustWalletHome_Previews: PreviewProvider {
    static var previews: some View {
        TrustWalletHome()
    }
}
