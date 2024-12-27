//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickViewZodiakQuiz: View {
    
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
        VStack(spacing: 40) {
            Spacer()
            Spacer()
            
            Text("Choose a quiz mode")
                .withFont(size: 30.57, weight: .medium)
            
            VStack(spacing: isSE ? 40: 70) {
                NavigationLink {
                    QuestionViewZodiakQuiz(type: .oneP)
                } label: {
                    Image("1p")
                }
                
                
                NavigationLink {
                    QuestionViewZodiakQuiz(type: .withC)
                } label: {
                    Image("wc")
                }
                
                NavigationLink {
                    QuestionViewZodiakQuiz(type: .withF)
                } label: {
                    Image("wf")
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewZodiakQuiz(showLoading: false, selectedTab: .quiz)
}
