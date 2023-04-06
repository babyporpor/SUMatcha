//
//  ButtonCF.swift
//  suMatchaV2
//
//  Created by admin on 4/5/23.
//

import SwiftUI

struct ButtonCF: View {
//    @State var showCheckView: Bool = false
    var body: some View {
        
        Button {
//            withAnimation{
//                showCheckView = true
//            }
        } label: {
            
            
                Text("สั่งซื้อ")
                    .font(.system(size: 20).bold())
                    .padding(.vertical,20)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .cornerRadius(15)
                    .shadow(color:
                                Color.black.opacity(0.07), radius: 5, x:5, y:5)
                
                    .padding(.top,25)
                    .padding(.horizontal)
            }
    }
}

struct ButtonCF_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCF()
    }
}
