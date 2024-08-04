//
//  HomeView.swift
//  RestartSwiftUI
//
//  Created by Shiva Sai Netha Rudra on 8/25/22.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("Onboarding") var isOnboardingViewDisplayed: Bool =  false
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
                .offset(y: isAnimating ? 35 : -35)
                .animation(.easeOut(duration: 4).repeatForever(), value: isAnimating)
            }
            Text("The time that leads to mastery is dependent on the intensity of focus")
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(100)
            Spacer()
            
            Button {
                withAnimation {
                    playSound(sound:"success", type: "m4a")
                    isOnboardingViewDisplayed = false
                }
            } label: {
                VStack{
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .imageScale(.large)
                        .scaledToFit()
                    
                    Text("Restart")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 10))
            .controlSize(.large)
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    isAnimating = true
                }
            })
            
        
            Spacer()
            Spacer()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
