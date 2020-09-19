//
//  FooterView.swift
//  Honeymoon
//
//  Created by Kevin Kho on 09/07/20.
//  Copyright © 2020 Kevin Kho. All rights reserved.
//

import SwiftUI

struct FooterView: View {
    // MARK: - Properties
    @Binding var showBookingAlert: Bool
    let haptics = UINotificationFeedbackGenerator()
    var body: some View {
        HStack {
//            Image(systemName: "xmark.circle")
//                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showBookingAlert.toggle()
            }) {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(Color.pink)
                .background(
                    Capsule().stroke(Color.pink, lineWidth: 2)
                )
            }
            
            Spacer()
            
//            Image(systemName: "heart.circle")
//                .font(.system(size: 42, weight: .light))
            
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    @State static var showAlert: Bool = false
    
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
