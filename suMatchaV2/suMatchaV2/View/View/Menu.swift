//
//  Menu.swift
//  suMatcha
//
//  Created by admin on 4/2/23.
//

import SwiftUI

struct Menu: View {
    
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false

    var body: some View {
        
//        NavigationView{
            HStack(alignment: .top, spacing: 0){
                
                Button(action: { isSelected = true
                }) {
                    VStack{
                        Image("coffeegray")
                        Text("เครื่องดื่ม")
                    }
                        
                    .padding()
                    .foregroundColor(.gray)
                        //Label("เครื่องดื่ม", image: "coffee")
                }
//                NavigationLink("", destination:  Collection(), isActive: $isSelected)
                
                Button(action: {
                }) {
                    VStack{
                        Image("icecream")
                        Text("ไอศกรีม")
                    }
                    .padding()
                    .foregroundColor(.gray)
                }
                
                Button(action: {
                }) {
                    VStack{
                        Image("cake")
                        Text("ของหวาน")
                    }
                    .padding()
                    .foregroundColor(.gray)
                }
                
                Button(action: {
                }) {
                    VStack{
                        Image("tapas")
                        Text("ของทานเล่น")
                    }
                    .padding()
                    .foregroundColor(.gray)

                }
            }
//        }
        
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

