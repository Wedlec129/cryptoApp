//
//  HomeView.swift
//  cryptoApp
//
//  Created by Борух Соколов on 22.09.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showProfolio: Bool = false
    
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            VStack{
                
                HomeHender
                
                
                Spacer(minLength: 9)
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeView()
                .navigationBarHidden(true)
        }
    }
}

extension HomeView{
    var HomeHender: some View {
        HStack{
            CircleButtonView(iconName: showProfolio ? "info" : "plus")
                .background(
                    CircleButtonViewAnimation(animate: $showProfolio)
                )
            Spacer()
            Text(showProfolio ? "Portfolio" : "Live Price")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(.theme.accent)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showProfolio ? 90 : 0))
                .onTapGesture {
                    showProfolio.toggle()
                }
        }
        
        .padding(.horizontal)
    }
}

