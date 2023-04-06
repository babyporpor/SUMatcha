//
//  CustomCorners.swift
//  sumatcha-app
//
//  Created by Baitong Kanna on 4/4/2566 BE.
//

import SwiftUI

struct CustomCorners: Shape {
    
    var corner: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize (width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}


