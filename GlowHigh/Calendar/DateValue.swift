//
//  DateValue.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

// date value model
struct DateValue: Identifiable {
    var id = UUID().uuidString
    var day: Int
    var date: Date
}
