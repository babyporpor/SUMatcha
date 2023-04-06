//
//  LoginPageModel.swift
//  sumatcha-app
//
//  Created by Baitong Kanna on 4/4/2566 BE.
//

import SwiftUI

 
class LoginPageModel: ObservableObject {
    
    //login
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    //register
    @Published var registerUser: Bool = false
    @Published var re_Enter_Password: String = ""
    @Published var showReEnterPassword: Bool = false
    
    //login call..
    func Login(){
        // do action here
        
    }
    
    func Register(){
        // do action here
        
    }
    
    func ForgotPassword(){
        // do action here
        
    }
}
