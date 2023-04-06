//
//  ProfilePage.swift
//  suMatcha
//
//  Created by admin on 4/5/23.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack{
                Text("My Profile")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment:  .leading)
                    .font(.system(size: 22))
                
                VStack(spacing: 15){
                    
                    Image("porpor")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    
                    Text("Porpor L")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    
                    HStack(alignment: .top, spacing: 10){
                        
                        Image(systemName: "location.north.circle.fill")
                            .foregroundColor(.gray)
                            .rotationEffect(.init(degrees: 180))
                            .padding(.top,10)
                        
                        Text("ที่อยู่ 99/3 หมู่ที่ 5 ต.สามพระยา อ.ชะอำ จ.เพชรบุรี 76120")
                            .fontWeight(.medium)
                            .padding(.top,10)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding([.horizontal, .bottom])
                .background(
                    Color.white
                        .cornerRadius(12)
                )
                .padding()
                .padding(.top,10)
                
                CustomNavigation(title: "Edit My Profile") {
                    Text("")
                    
                        .navigationTitle("Edit Profile")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("HomeBG").ignoresSafeArea())
                }
                
                CustomNavigation(title: "Edit My Address") {
                    Text("")
                    
                        .navigationTitle("Edit My Address")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("HomeBG").ignoresSafeArea())
                }
                
                CustomNavigation(title: "Favorite") {
                    Text("")
                    
                        .navigationTitle("Favorite")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("HomeBG").ignoresSafeArea())
                }
                
                CustomNavigation(title: "Setting") {
                    Text("")
                    
                        .navigationTitle("Setting")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("HomeBG").ignoresSafeArea())
                }
                
                CustomNavigation(title: "Help Center") {
                    Text("")
                    
                        .navigationTitle("Help Center")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("HomeBG").ignoresSafeArea())
                }
                
                CustomNavigation(title: "Log Out") {
                    Text("")
                    
                        .navigationTitle("Log Out")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("HomeBG").ignoresSafeArea())
                }
                
            }
            .padding(.horizontal,22)
            .padding(.vertical,20)
    
        }
        .navigationBarHidden(true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color("gray")
        )
    }
}

@ViewBuilder
func CustomNavigation<Detail:View>(title: String,@ViewBuilder content:@escaping()->Detail)->some View{
    
    NavigationLink {
        content()
    } label: {
        HStack{
            Text(title)
                .fontWeight(.semibold)
            
            Spacer()
            
            
            Image(systemName: "chevron.right")
        }
        .foregroundColor(.black)
        .padding()
        .background(
            Color.white
                .cornerRadius(12)
        )
        .padding(.horizontal)
        .padding(.top,10)
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}

