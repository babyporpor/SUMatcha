//
//  OrderView4.swift
//  suMatchaV2
//
//  Created by admin on 4/5/23.
//

import SwiftUI

struct OrderView4: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(spacing: 0){
                
                Text("Matcha and Cocoa")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                Text("โกโก้มัทฉะ")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.system(size: 20))
                    .foregroundColor(.gray)
                
                
                
                Image("image 2")
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

struct OrderView4_Previews: PreviewProvider {
    static var previews: some View {
        OrderView4()
    }
}
