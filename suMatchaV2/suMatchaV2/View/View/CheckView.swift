//
//  CheckView.swift
//  suMatchaV2
//
//  Created by admin on 4/5/23.
//

import SwiftUI

struct CheckView: View {
    var body: some View {
        VStack(spacing: 0){
            Image("check_circle-3")
            
            Text("สั่งซื้อเรียบร้อยแล้ว")
                .font(.system(size: 25))
                .foregroundColor(.green)
                .fontWeight(.bold)
            
        }
        
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView()
    }
}
