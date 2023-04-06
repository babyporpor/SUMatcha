//
//  MainPageView.swift
//  suMatcha
//
//  Created by admin on 4/5/23.
//

import SwiftUI

struct MainPageView: View {
    
    @State private var selection: Tab = .Home
    
    enum Tab{
        case Home
        case List
        case Wallet
        case Profile
    }

    
    var body: some View {
        
        TabView(selection: $selection) {
            
            Home()
                .tabItem{
                    VStack{
                        Image("homee")
                        Label("หน้าแรก", systemImage: "homee")
                    }
                }
                .tag(Tab.Home)
            
            ListTab()
                .tabItem{
                    VStack{
                        Image("list")
                        Label("รายการ", systemImage: "list")
                    }
                }
                .tag(Tab.List)
            
            Image("accwall")
                .tabItem{
                    VStack{
                        Image("accwall")
                        Label("ชำระเงิน", systemImage: "accwall")
                    }
                }
                .tag(Tab.Wallet)
            
            ProfilePage()
                .tabItem{
                    VStack{
                        Image("profile")
                        Label("โปรไฟล์", systemImage: "profile")
                    }
                }
                .tag(Tab.Profile)
    
        }
        
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}

