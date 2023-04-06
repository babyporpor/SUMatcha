//
//  Home.swift
//  suMatcha
//
//  Created by admin on 4/1/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(spacing: 15){
                
                HStack(spacing: 15){
                    
                    Image(systemName: "search")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    TextField("Search", text: .constant(""))
                        .disabled(true)
                }
                .padding(.vertical,12)
                .padding(.horizontal)
                .background(
                    Capsule()
                        .strokeBorder(Color.gray,lineWidth: 0.8)
                )
                //.frame(width: getRect().width / 1.6)
                .padding(.horizontal,25)
                
                //Text("Order online\ncollect in store")
                Image("Ads")
                
                HStack(spacing: 0){
                    Button(action: {
                                    // Add code for what happens when first button is tapped
                                }) {
                                    Text("การชำระเงิน")
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.gray)
                                        .cornerRadius(15)
                                }
                                .padding(.horizontal)
                    Button(action: {
                                    // Add code for what happens when first button is tapped
                                }) {
                                    Text("คะแนน")
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.gray)
                                        .cornerRadius(15)
                                }
                                .padding(.horizontal)
                    //Product Tab
                }
                Menu()
                Collection()
            }
            .padding(.vertical)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

//extension View{
//    func getRect()->CGRect{
//        return UIScene.main.bounds
//    }
//}



