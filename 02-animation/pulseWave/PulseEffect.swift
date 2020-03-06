//
//  PulseEffect.swift
//  pulseWave
//
//  Created by Eros Reale on 06/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI


struct PulseEffect: ViewModifier {
    var amount: CGFloat
    var duration: Double = 0.1
    
    func body(content: Content) -> some View {
        content
        .scaleEffect(amount)
        .animation( Animation.easeInOut(duration: duration) )
    }
}

// func PulseAnimate(_ animationAmount: CGFloat) {
//        animationAmount += 0.1
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//            animationAmount -= 0.1
//        }
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//            animationAmount += 0.1
//        }
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//            animationAmount -= 0.1
//        }
//    }


//struct PulseEffect: GeometryEffect {
////    var offset: CGFloat
//
////    var animatableData:
////        AnimatablePair<CGFloat, CGFloat> {
////        get { AnimatablePair(offset, skew) }
////        set {
////            offset = newValue.first
////            skew = newValue.second
////        }
////    }
//
//    func effectValue(size: CGSize) -> ProjectionTransform {
//        return ProjectionTransform(CGAffineTransform(a: 1, b: 0, c: 1, d: 1, tx: 0, ty: 0))
//    }
//}

//
//self.animationAmount += 0.1
//DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//    self.animationAmount -= 0.1
//}
//
//DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//    self.animationAmount += 0.1
//}
//
//DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//    self.animationAmount -= 0.1
//}
