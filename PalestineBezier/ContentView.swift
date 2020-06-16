// https://github.com/m760622
//  ContentView.swift
//  PalestineBezier
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-16.
//  Copyright © 2020 NMDS. All rights reserved.
// https://github.com/m760622/PalestineBezier


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            PalestineTextView()
            Spacer()
            PalestineBezierView()
        }
    }//body
}//ContentView


struct PalestineTextView: View {
    @State var scale: Double = 90
    var body: some View {
        Text("PALESTINE")
            .padding(.leading, 50)
            .padding(.trailing, 50)
            .foregroundColor(.white)
            .background(Capsule()
                .fill(LinearGradient(gradient: Gradient(colors: [Color(colorBlack),Color(colorBlack), Color(colorRed),Color(colorRed), Color(colorGreen), Color(colorGreen)]), startPoint: .topTrailing, endPoint: .bottomLeading)))
            .font(.largeTitle)
            .rotation3DEffect(.degrees(scale), axis: (x: 1, y: 0, z: 0))
            .onAppear {
                withAnimation(Animation.linear(duration: 5.0).repeatForever(autoreverses: true).delay(7.0)){
                    self.scale = 0
                }
        }//onAppear
    }//body
}//PalestineTextView

struct PalestineBezierView: View {
    @State var scale: Double = 180
    @State var endAmount: CGFloat = 0
    @State var isFilled = false
    let pathBounds = UIBezierPath.calculateBounds(paths: [palestineBlankLogo])
    var body: some View {
        ZStack {
            ShapeView(bezier: palestineBlankLogo, pathBounds: pathBounds)
                .trim(from: 0, to: endAmount)
                .stroke(Color(colorRed), lineWidth: 2)
            ShapeView(bezier: palestineBlankLogo, pathBounds: pathBounds)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(colorBlack),Color(colorBlack), Color(colorRed),Color(colorRed), Color(colorWhite),Color(colorWhite), Color(colorGreen), Color(colorGreen)]), startPoint: .leading, endPoint: .trailing)).opacity(isFilled ? 1 : 0)
        }//ZStack
            .frame(width: 200, height: 600 )
            .rotation3DEffect(.degrees(scale), axis: (x: 0, y: 1, z: 0))
            .onAppear {
                withAnimation(.easeInOut(duration: 5)) {
                    self.endAmount = 1
                }
                withAnimation(Animation.easeInOut(duration: 3).delay(5)) {
                    self.isFilled = true
                }
                withAnimation(Animation.linear(duration: 5.0).repeatForever(autoreverses: true).delay(9.0)){
                    self.scale = 0
                }
        }//onAppear
    }//body
}//PalestineBezierView



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
