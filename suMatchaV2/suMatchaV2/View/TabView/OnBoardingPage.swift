//
//  OnBoardingPage.swift
//  sumatcha-app
//
//  Created by Baitong Kanna on 4/4/2566 BE.
//

import SwiftUI

struct OnboardingPage: View {
    
    //Showing Login Page
    @State var showLoginPage: Bool = false
    var body: some View {
        
        VStack{
                
            Image("logo-greentea")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
           Button {
               withAnimation{
                   showLoginPage = true
               }
            } label: {
                Text("Let's Go")
                    .fontWeight(.semibold)
                    .padding(.vertical,20)
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
                    .shadow(color:Color.black.opacity(0.1),
                           radius: 5, x: 5, y: 5)
                   .foregroundColor(Color.white)

            }
            .padding(.horizontal,30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        
        .overlay(
            Group{
                if showLoginPage{
                    LoginPage()
                        .transition(.move(edge: .bottom))
                }
            }
        )
    }
}

struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage()
    }
}


