//
//  List.swift
//  suMatcha
//
//  Created by admin on 4/2/23.
//

import SwiftUI

struct List: View {
    var body: some View {
        
        Text("OrderList")
//        HStack{
//            Image("matcha1")
//                .resizable()
//                .scaledToFit()
//                .frame(height: 70)
//
//            VStack(alignment: .leading, spacing: 5){
//            Text("Matcha Espresso")
//                .fontWeight(.semibold)
//                .lineLimit(2)
//                .minimumScaleFactor(0.5)
//
//
//            Text("ชาเขียวมัทฉะและกาแฟสด")
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//            }
//
//
//        }
        
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        List()
    }
}

struct ListItem: Identifiable{
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
}

//var ListMatcha = [
//    ListItem(title: "Matcha Espresso", subtitle: "ชาเขียวมัทฉะและกาแฟสด", image: "matcha6"),
//    ListItem(title: "Matcha Coffee Dalgona", subtitle: "มัทฉะลาเต้ดัลโกนา", image: "matcha7")
//]
