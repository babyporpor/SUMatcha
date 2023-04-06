//
//  LoginPage.swift
//  sumatcha-app
//
//  Created by Baitong Kanna on 4/4/2566 BE.
//

import SwiftUI
//import FirebaseAuth

struct LoginPage: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @StateObject var loginData: LoginPageModel = LoginPageModel()
//    @State var showMainPageView: Bool = false
    
    var body: some View {
        
        VStack{
            
                Image("Rectangle 7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxHeight: 200)
                    .padding()
            
            
            
            ScrollView(.vertical, showsIndicators: false){
                
                //Login Page Form
                VStack(spacing: 15){
                    Text(loginData.registerUser ?  "Register" : "Login")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    //Custom Text Field
                    CustomTextField(icon: "envelope", title: "Email", hiht: "Email", value: $loginData.email, showPassword:
                            .constant(false))
                    .padding(.top,30)
                    
                    CustomTextField(icon: "lock", title: "Password", hiht: "Password", value: $loginData.password, showPassword: $loginData.showPassword)
                        .padding(.top,10)
                    
                    // Regsiter Reenter Password
                    if loginData.registerUser{
                        CustomTextField(icon: "envelope", title: "Re-Enter Password", hiht: "1234", value: $loginData.re_Enter_Password, showPassword: $loginData.showReEnterPassword)
                            .padding(.top,10)
                    }
                    
                    // Forget Password
                    Button {
                        loginData.ForgotPassword()
                    } label: {
                        
                        Text("Forgot password?")
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.top,8)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
                    // Login Button
                    Button {
                        if loginData.registerUser{
                            loginData.Register()
                        }
                        else{
                            loginData.Login()
                        }
                        
                        //                        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                        //                            if let error = error {
                        //                                print(error)
                        //                                return
                        //                            }
                        //
                        //                            if let authResult {
                        //                                print(authResult.user.uid)
                        //                            }
                        //                        }
                        
                    } label: {
                        
                        
                            Text("Login")
                                .font(.system(size: 18).bold())
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
//                    .overlay(
//                        Group{
//                            if showMainPageView{
//                                MainPageView()
//                                    .transition(.move(edge: .bottom))
//                            }
//                        }
//                    )
//
                        
                    
                    
//                    .overlay(
//                        Group{
//                            if showMainPageView{
//                                MainPageView()
//                                    .transition(.move(edge: .bottom))
//                            }
//                        }
//                    )
                    
                    // Register User Button
                    Button {
                        withAnimation {
                            loginData.registerUser.toggle()
                   
                        }
                    } label: {
                        
                        Text(loginData.registerUser ? "Back to login" : "Create account")
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.top,8)
                }
                .padding(30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            
            // Applying Custom Corner
            .clipShape(CustomCorners(corner: [.topLeft,.topRight], radius: 25))
            .ignoresSafeArea()
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
//        .background(Color("#7FA62D"))
//        .background(Color("ColorBG"))
    
        
        // Clearing data when Changes
        // Optional
        .onChange(of: loginData.registerUser) { newValue in
            
            loginData.email = ""
            loginData.password = ""
            loginData.re_Enter_Password = ""
            loginData.showPassword = false
            loginData.showReEnterPassword = false
        }
    }
    
    
    @ViewBuilder
    func CustomTextField(icon: String,title: String,hiht:String,value: Binding<String>,showPassword: Binding<Bool>)->some View{
        VStack(alignment: .leading, spacing: 12){
            Label {
                Text(title)
                    .font(.system(size: 20))
//                    .fontWeight(.bold)
            } icon: {
                Image(systemName: icon)
            }
            .foregroundColor(Color.black.opacity(0.8))
            
            if title.contains("Password") && !showPassword.wrappedValue{
                SecureField(hiht, text: value)
                    .padding(.top,2)
                
            } else{
                TextField(hiht, text: value)
                    .padding(.top,2)
            }
            
            Divider()
                .background(Color.black.opacity(0.4))
        }
        // Showing Show Button for password Field
        .overlay(
            Group{
                
                if title.contains("Password") {
                    Button(action: {
                        showPassword.wrappedValue.toggle()
                    }, label: {
                        Text(showPassword.wrappedValue ? "Hide" : "Show")
                            .font(.system(size: 13).bold())
                            .foregroundColor(Color.green)
                    })
                    
                    .offset(y:8)
                }
            }
            ,alignment: .trailing
            
        )
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}


