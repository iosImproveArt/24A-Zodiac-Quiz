//
//  LoadingView.swift
//  Sg western star
//
//  Created by Uniqit on 16.07.2024.
//

import SwiftUI

struct LoadingViewSQ: View {
    @AppStorage("firstInApp") var firstInApp = true
    
    @Binding var showView: Bool
    @State var rotation: CGFloat = 0
    
     var wrfcwrcf = "3235245"
    var rgvergv = 245245254245
    func rvg() -> String {
        return "vwrgvwrgv"
    }
    func wrvgwrgvwg() {
        print("rgvwrgv")
    }
    
    
    func cwrwrvwrcfrc() -> Float {
        print(225224 / 322454)
        return 224452452.4 * 32245242
    }
    var wfwrwrgwvwrvwr = [25252.2352: "w4rw4q4rf"]
    var wrfvwr = [252: "wrcwrcw"]
    
    private struct FWuhjnwedjwn {}
        
   
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image("loading 1")
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear, value: rotation)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 0.004, repeats: true) { timer in
                            guard showView else { timer.invalidate(); return }
                            
                            rotation += 1
                        }
                    }
                
                Text("Loading...")
                    .withFont(size: 30, weight: .medium)
                    .padding(.bottom, 30)
            }.background(1)
            
            
            PrivacyViewZodiakQuiz(showLoading: $showView)
                .opacity(firstInApp ? 1: 0)
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    if !firstInApp {
                        showView = false
                    }
                }
            }
        }
    }
    
}

#Preview {
    LoadingViewSQ(showView: .constant(true))
}

