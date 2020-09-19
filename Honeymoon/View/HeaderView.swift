//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Kevin Kho on 09/07/20.
//  Copyright © 2020 Kevin Kho. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    let haptics = UIImpactFeedbackGenerator(style: .light)
    var body: some View {
        HStack {
            Button(action: {
                //Action
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.impactOccurred()
                self.showInfoView.toggle()
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView) {
                InfoView()
            }
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.impactOccurred()
                self.showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView){
                GuideView()
            }
        }
    .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
