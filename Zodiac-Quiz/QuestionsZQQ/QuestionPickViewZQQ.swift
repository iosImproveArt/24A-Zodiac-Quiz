//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickViewZodiakQuiz: View {
    
     var wrfcwrcf = "3235245"
    var vwrgr = 245245
    func ghtrvwsrgvgvfjk() -> String {
        return "uhnevwrgvwrgvfrijmko"
    }
    func wrvgwrgvwg() {
        print("gnwvrgwrgvmfr")
    }
    
    
    func cwrcfrc() -> Float {
        print(224 / 324)
        return 2244 * 3242
    }
    var wfwrvwr = [42624624.2524524: "wcrfcwrc"]
    var jrncfm = [352: "crfc"]
    
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
