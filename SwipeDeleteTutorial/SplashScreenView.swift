//
//  SplashScreenView.swift
//  SwipeDeleteTutorial
//
//  Created by asdirector on 19.01.2024.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.9
    @State private var opacity = 0.5
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack{
                VStack{
                    Image( systemName: "apple.logo")
                        .font(.system(size: 80))
                        .foregroundColor(.red)
                        .padding(.top)
                    Text("Fruits")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                        
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0 ) {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
