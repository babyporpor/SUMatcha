//
//  DropdownView.swift
//  suMatcha
//
//  Created by admin on 4/5/23.
//

import SwiftUI

struct DropdownView: View {
    
    @State private var isExpanded = false
    @State private var selectedOrder = 1
//    @State private var num = [หวานน้อย, หวานปกติ, หวานมาก]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text("ระดับความหวาน")
                .font(.system(size: 25))
                .foregroundColor(.black)
                .fontWeight(.bold)
            DisclosureGroup("\(selectedOrder)", isExpanded: $isExpanded){
                VStack {
                    ForEach(1...3, id: \.self) { num in
                        Text("หวานระดับ \(num)")
                            .font(.title)
                            .padding(.all)
                            .onTapGesture {
                                self.selectedOrder = num
                                withAnimation{
                                    self.isExpanded.toggle()
                                }
                            }
                    }
                }
            }
            .accentColor(.black)
            .font(.title2)
            .foregroundColor(.black)
            .padding(.all)
//            .background(Color.gray)
            .border(.gray)
            .cornerRadius(2)

        }
                  
    }
}

struct DropdownView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownView()
    }
}
