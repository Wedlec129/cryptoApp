//
//  CircleButtonViewAnimation.swift
//  cryptoApp
//
//  Created by Борух Соколов on 22.09.2023.
//

import SwiftUI

struct CircleButtonViewAnimation: View {
    
    @Binding var animate:Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
//            .onAppear(perform: {
//                animate.toggle()
//            })
            
    }
}

struct CircleButtonViewAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonViewAnimation(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100,height: 100)
    }
}
