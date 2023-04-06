//
//  Collection.swift
//  suMatcha
//
//  Created by admin on 4/2/23.
//

import SwiftUI

struct Collection: View {
    
    @State private var showOrder = false
    @State private var showOrder2 = false
    @State private var showOrder3 = false
    @State private var showOrder4 = false
    @State private var showOrder5 = false
    @State private var showOrder6 = false
    
    var body: some View {
        
        NavigationView{
            VStack(spacing: 0){
                
                HStack(spacing: 10){
        
                    Button(action: { showOrder = true
                    }) {
                        Image("matcha")
                            .frame(width: 100, height: 100, alignment: .center)
                            .border(.gray)
                            .cornerRadius(5)
                    }
                    NavigationLink("", destination:  OrderView1(), isActive: $showOrder)
                    
                    
                    Button(action: {
                        showOrder2 = true
                    }) {
                        
                        Image("matcha1")
                            .frame(width: 100, height: 100, alignment: .center)
                            .border(.gray)
                            .cornerRadius(5)
                    }
                    NavigationLink("", destination:  Order(), isActive: $showOrder2)
                    
                    Button(action: { showOrder3 = true
                    }) {
                        
                        Image("matcha2")
                            .frame(width: 100, height: 100, alignment: .center)
                            .border(.gray)
                            .cornerRadius(5)
                    }
                    NavigationLink("", destination:  OrderView2(), isActive: $showOrder3)
                    
                }
                .padding()
                
                HStack(spacing: 10){
                    
                    Button(action: { showOrder4 = true
                    }) {
                        Image("matcha3")
                            .frame(width: 100, height: 100, alignment: .center)
                            .border(.gray)
                            .cornerRadius(5)
                    }
                    NavigationLink("", destination:  OrderView3(), isActive: $showOrder4)
                    
                    Button(action: { showOrder5 = true
                    }) {
                        Image("matcha4")
                            .frame(width: 100, height: 100, alignment: .center)
                            .border(.gray)
                            .cornerRadius(5)
                    }
                    NavigationLink("", destination:  OrderView4(), isActive: $showOrder5)
                    
                    Button(action: { showOrder6 = true
                    }) {
                        Image("matcha5")
                            .frame(width: 100, height: 100, alignment: .center)
                            .border(.gray)
                            .cornerRadius(5)
                    }
                    NavigationLink("", destination:  Order(), isActive: $showOrder6)
                    
                }
            }
            
        }
        
    }
}

struct Collection_Previews: PreviewProvider {
    static var previews: some View {
        Collection()
    }
}

