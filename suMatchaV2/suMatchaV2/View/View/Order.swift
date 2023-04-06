//
//  Order.swift
//  suMatcha
//
//  Created by admin on 4/2/23.
//

import SwiftUI

struct Order: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(spacing: 0){
                
                Text("Matcha Esspresso")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    .font(.system(size: 30))
                    .foregroundColor(Color("greenmatcha"))
                    .fontWeight(.bold)
                    
                
                Text("ชาเขียวมัทฉะและนมสด")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.system(size: 20))
                    .foregroundColor(.gray)
                
                
                
                Image("espresso")
                    .padding(.bottom)
                
                DropdownView()
                OptionView()
                    .padding()
                
                
                ButtonDemo()
                
                //Image("matcha6")
            }
        }
        .padding()
    }
}

struct Order_Previews: PreviewProvider {
    static var previews: some View {
        Order()
    }
}
