//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Kevin Kho on 10/07/20.
//  Copyright © 2020 Kevin Kho. All rights reserved.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.largeTitle)
        .foregroundColor(Color.pink)
    }
}
