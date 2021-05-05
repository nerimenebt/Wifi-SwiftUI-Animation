//
//  ArcView.swift
//  WifiConnectAnimation
//
//  Created by Nerimene on 3/5/2021.
//

import SwiftUI

struct ArcView: View {
    
    var radius: CGFloat
    @Binding var fillColor: Color
    @Binding var shadowColor: Color
    
    var body: some View {
        ArcShape(radius: radius)
            .fill(fillColor)
            .shadow(color: shadowColor, radius: 5)
            .frame(height: radius)
            .animation(Animation.spring().speed(0.75))
            .onTapGesture {
                self.fillColor = Color(red: 170/255, green: 255/255, blue: 197/255, opacity: 1.0)
            }
    }
}
struct ArcView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            ArcView(radius: 42, fillColor: .constant(Color(red: 170/255, green: 255/255, blue: 197/255, opacity: 1.0)), shadowColor: .constant(Color.red))
        }
    }
}
