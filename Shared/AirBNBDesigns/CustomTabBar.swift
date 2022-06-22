//
//  CustomTabBar.swift
//  BasicUI-SwiftUI
//
//  Created by Mohammed Ismayil on 22/06/22.
//

import SwiftUI

struct CustomTabBar: View {
    
    @State var currentIndex = 0
    let tabBarElements = [TabBarItem(title: "Explore"),TabBarItem(title: "Saved"),TabBarItem(title: "Trips"),TabBarItem(title: "Inbox"),TabBarItem(title: "Profile")]
    var body: some View {
        
        ZStack {
           AirbnbHomePage()
            
            VStack {
                Spacer()
                HStack{
                    
                    
                    ForEach(tabBarElements.indices) { index in
                        VStack{
                            Image(systemName: "heart.fill").imageScale(.large)
                            Text(tabBarElements[index].title).foregroundColor(currentIndex == index ? Color.red : Color.black)
                            
                            
                        }.frame(maxWidth: .infinity, alignment: .center).onTapGesture {
                            print("You have selected \(tabBarElements[index].title)")
                            
                            currentIndex = index
                        }
                    }
                    
//                    VStack{
//                        Image(systemName: "heart.fill").imageScale(.large)
//                        Text("Explore")
//                    }.frame(maxWidth: .infinity, alignment: .center)
//                    VStack{
//                        Image(systemName: "heart.fill").imageScale(.large)
//                        Text("Explore")
//                    }.frame(maxWidth: .infinity, alignment: .center)
//                    VStack{
//                        Image(systemName: "heart.fill").imageScale(.large)
//                        Text("Explore")
//                    }.frame(maxWidth: .infinity, alignment: .center)
//                    VStack{
//                        Image(systemName: "heart.fill").imageScale(.large)
//                        Text("Explore")
//                    }.frame(maxWidth: .infinity, alignment: .center)
                   
                }.frame(width: UIScreen.screenWidth - 40, height: 70, alignment: .center).background(Color.white) .cornerRadius(13)
                    .shadow(radius: 5, x: 0, y: 2)
            }
            .padding(.bottom, 8)
        }
       
    }
}

struct TabBarItem {
    
    let title: String
}
struct TabItemData {
    let image: String
    let selectedImage: String
    let title: String
}
struct TabItemView: View {
    let data: TabItemData
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(isSelected ? data.selectedImage : data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .animation(.default)
            
            Spacer().frame(height: 4)
            
            Text(data.title)
                .foregroundColor(isSelected ? .black : .gray)
                .font(.system(size: 14))
        }
    }
}
struct TabBottomView: View {
    
    let tabbarItems: [TabItemData]
    var height: CGFloat = 70
    var width: CGFloat = UIScreen.main.bounds.width - 32
    @Binding var selectedIndex: Int
    
    var body: some View {
        HStack {
            Spacer()
            
            ForEach(tabbarItems.indices) { index in
                let item = tabbarItems[index]
                Button {
                    self.selectedIndex = index
                } label: {
                    let isSelected = selectedIndex == index
                    TabItemView(data: item, isSelected: isSelected)
                }
                Spacer()
            }
        }
        .frame(width: width, height: height)
        .background(Color.white)
        .cornerRadius(13)
        .shadow(radius: 5, x: 0, y: 4)
    }
}
struct CustomTabView<Content: View>: View {
    
    let tabs: [TabItemData]
    @Binding var selectedIndex: Int
    @ViewBuilder let content: (Int) -> Content
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedIndex) {
                ForEach(tabs.indices) { index in
                    content(index)
                        .tag(index)
                }
            }
            
            VStack {
                Spacer()
                TabBottomView(tabbarItems: tabs, selectedIndex: $selectedIndex)
            }
            .padding(.bottom, 8)
        }
    }
}
enum TabType: Int, CaseIterable {
    case home = 0
    case myFile
    case profile
    
    var tabItem: TabItemData {
        switch self {
        case .home:
            return TabItemData(image: "ic_home", selectedImage: "ic_home_selected", title: "Home")
        case .myFile:
            return TabItemData(image: "ic_myfile", selectedImage: "ic_myfile_selected", title: "My File")
        case .profile:
            return TabItemData(image: "ic_profile", selectedImage: "ic_profile_selected", title: "Me")
        }
    }
}
struct MainTabView: View {
    
    @State var selectedIndex: Int = 0
    
    var body: some View {
        CustomTabView(tabs: TabType.allCases.map({ $0.tabItem }), selectedIndex: $selectedIndex) { index in
            let type = TabType(rawValue: index) ?? .home
            getTabView(type: type)
        }
    }
    
    @ViewBuilder
    func getTabView(type: TabType) -> some View {
        switch type {
        case .home:
           Text("ss")
        case .myFile:
            Text("ss")
        case .profile:
            Text("ss")
        }
    }
}
struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
