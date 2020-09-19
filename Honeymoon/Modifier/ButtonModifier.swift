//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Kevin Kho on 10/07/20.
//  Copyright © 2020 Kevin Kho. All rights reserved.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.headline)
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Capsule().fill(Color.pink))
        .foregroundColor(Color.white)
    }
}

