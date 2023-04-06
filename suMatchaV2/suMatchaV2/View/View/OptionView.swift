//
//  OptionView.swift
//  suMatchaV2
//
//  Created by admin on 4/5/23.
//

import SwiftUI

struct OptionView: View {
    
//    @State private var selection: Option?
    @State private var isOn = false
    @State var slabQualifiers = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            HStack{
                Text("เพิ่มช็อต")
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding(.horizontal, -60)
//                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Text("(Option, สูงสุด 1)")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
//                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 60)
                            
                
                
                  }
            VStack{
                HStack{
                    Button(action:{slabQualifiers = true }){
                        Text(" ")
                            .frame(width: 30, height: 30)
                            .background(slabQualifiers ? Color.black : Color.white)
                            .cornerRadius(100)
                            .foregroundColor(Color.black)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.black, lineWidth: 6)
                                .scaleEffect(0.6)
                            )
                    }
                    .padding(.horizontal, -60)
                    
                    Text("เพิ่มช็อตกาแฟ")
                }
                
                HStack{
                    Button(action:{slabQualifiers = false }){
                        Text(" ")
                            .frame(width: 30, height: 30)
                            .background(slabQualifiers ? Color.white : Color.black)
                            .cornerRadius(100)
                            .foregroundColor(Color.black)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.black, lineWidth: 6)
                                .scaleEffect(0.6)
                            )
                    }
                    .padding(.horizontal, -60)
                    
                    Text("เพิ่มช็อตมัทฉะ")
                }
                
                HStack{
                    Button(action:{slabQualifiers = false }){
                        Text(" ")
                            .frame(width: 30, height: 30)
                            .background(slabQualifiers ? Color.black : Color.white)
                            .cornerRadius(100)
                            .foregroundColor(Color.black)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.black, lineWidth: 6)
                                .scaleEffect(0.6)
                            )
                    }
                    .padding(.horizontal, -60)
                    
                    Text("เพิ่มช็อตช็อกโกแลต")
                }
               
                
                
            }
            

            }

            
        
        }
        
        
       
    }


struct OptionView_Previews: PreviewProvider {
    static var previews: some View {
        OptionView()
    }
}
