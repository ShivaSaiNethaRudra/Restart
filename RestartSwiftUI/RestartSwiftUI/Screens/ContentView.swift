//
//  ContentView.swift
//  RestartSwiftUI
//
//  Created by Shiva Sai Netha Rudra on 8/25/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("Onboarding") var isOnboardingViewDisplayed: Bool =  false
    var body: some View {
        ZStack {
            if isOnboardingViewDisplayed {
                HomeView()
            } else {
                OnboardingView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
