//
//  OrderView3.swift
//  suMatchaV2
//
//  Created by admin on 4/5/23.
//

import SwiftUI

struct OrderView3: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(spacing: 0){
                
                Text("Matcha Latte")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                Text("มัทฉะลาเต้")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.system(size: 20))
                    .foregroundColor(.gray)
                
                
                
                Image("image 5")
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

struct OrderView3_Previews: PreviewProvider {
    static var previews: some View {
        OrderView3()
    }
}
