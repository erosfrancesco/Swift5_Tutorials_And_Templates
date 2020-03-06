//
//  ContentView.swift
//  pulseWave
//
//  Created by Eros Reale on 06/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    @State private var offset: CGFloat = 0
    @State private var skew: CGFloat = 0

    var body: some View {
        Group {
            Button("Tap me!") {
                self.animationAmount += 0.1
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.animationAmount -= 0.1
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    self.animationAmount += 0.1
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    self.animationAmount -= 0.1
                }
            }
            .padding(50)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
                
            .scaleEffect(animationAmount)
            .animation(
                Animation
                    .easeInOut(duration: 0.1)
            )
            
//            Text("Weeeeeee")
//                .font(.title)
//                .padding()
//                .modifier(SkewedOffset(offset: self.offset, skew: self.skew))
//                .onAppear {
//                    withAnimation(Animation
//                        .easeOut(duration: 0.1)
//                        .repeatCount(2)
////                            .linear(duration: 1.0)
//                    ) {
//                        self.offset = 100
//                        self.skew = 1
//                    }
//                }
        }
    }
}



struct SkewedOffset: GeometryEffect {
    var offset: CGFloat
    var skew: CGFloat
    
    var animatableData: AnimatablePair<CGFloat, CGFloat> {
        get { AnimatablePair(offset, skew) }
        set {
            offset = newValue.first
            skew = newValue.second
        }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        return ProjectionTransform(CGAffineTransform(a: 1, b: 0, c: skew, d: 1, tx: offset, ty: 0))
    }
}

public extension View {
    func offset(x: CGFloat, y: CGFloat) -> some View {
        return modifier(_OffsetEffect(offset: CGSize(width: x, height: y)))
    }

    func offset(_ offset: CGSize) -> some View {
        return modifier(_OffsetEffect(offset: offset))
    }
}

struct _OffsetEffect: GeometryEffect {
    var offset: CGSize
    
    var animatableData: CGSize.AnimatableData {
        get { CGSize.AnimatableData(offset.width, offset.height) }
        set { offset = CGSize(width: newValue.first, height: newValue.second) }
    }

    public func effectValue(size: CGSize) -> ProjectionTransform {
        return ProjectionTransform(CGAffineTransform(translationX: offset.width, y: offset.height))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
