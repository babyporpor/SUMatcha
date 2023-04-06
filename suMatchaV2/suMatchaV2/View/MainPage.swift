//
//  MainPage.swift
//  suMatcha
//
//  Created by admin on 4/1/23.
//

import SwiftUI

struct MainPage: View {
    //Current Tab
    @State var currentTab: Tab = .Home
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        VStack(spacing :0){
            TabView(selection: $currentTab){
                
                Home()
                    .tag(Tab.Home)
                
                Text("List")
                    .tag(Tab.List)
                
                Text("Wallet")
                    .tag(Tab.Cash)
                
                Text("Message")
                    .tag(Tab.Messages)
            }
            
            HStack(spacing: 0){
                ForEach(Tab.allCases,id: \.self){tab in
                    
                    Button{
                        
                    } label: {
                        
                        Image(tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .frame(maxWidth: .infinity)
                            //.foregroundColor(currentTab == tab ?
                                //Color("Purple") :
                                //Color.black.opacity(0.2))
                    }
                }
            }
            .padding([.horizontal,.bottom])
            .padding(.bottom,10)
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

//Tab Cases
enum Tab: String,CaseIterable{
    case Home = "Home"
    case List = "Cart"
    case Cash = "Wallet"
    case Messages = "Message"
}

