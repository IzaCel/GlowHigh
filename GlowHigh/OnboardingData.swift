//
//  OnboardingData.swift
//  GlowHigh
//
//  Created by scholar on 8/16/23.
//

import Foundation
struct OnboardingData: Hashable, Identifiable {
    let id: Int
    let backgroundImage: String
    let objectImage: String
    let primaryText: String
    let secondaryText: String
    
    static let list: [OnboardingData] = [
        OnboardingData(id: 0, backgroundImage: "whitebackgroundtest", objectImage: "appLogo", primaryText: "Welcome to GlowHigh!", secondaryText: "Ready to begin your journey into a more productive lifestyle?"),
        OnboardingData(id: 1, backgroundImage:"whitebackgroundtest", objectImage: "appLogo", primaryText: "Explore the app!", secondaryText: "GlowHigh is an app personalized by you, for you, and with you! Explore our calendar, journal, and tracker to effictively plan your day!"),
        OnboardingData(id: 2, backgroundImage:"whitebackgroundtest", objectImage: "appLogo", primaryText: "Have fun!", secondaryText: "Glow (go) high! Let's get started..."),
                      ]
}
