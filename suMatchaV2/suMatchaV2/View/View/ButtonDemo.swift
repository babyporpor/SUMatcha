//
//  ButtonDemo.swift
//  suMatchaV2
//
//  Created by admin on 4/5/23.
//

import SwiftUI

struct ButtonDemo: View {
    
    @State private var ShowFinish = false
    var body: some View {
        NavigationView{
            Button(action: { ShowFinish = true
            }) {
                
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
            NavigationLink("", destination:  CheckView(), isActive: $ShowFinish)
        }
    }
}

struct ButtonDemo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDemo()
    }
}
