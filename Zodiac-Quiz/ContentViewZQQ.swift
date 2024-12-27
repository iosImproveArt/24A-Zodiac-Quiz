//
//  ContentView.swift
//  Zodiac-Quiz
//
//  Created by  on 13.12.2024.
//

import SwiftUI

struct ContentViewZodiakQuiz: View {
    @AppStorage("notificationsAvalible") var notificationsAvalible = true
    @State var showLoading = true
    @State var selectedTab: Tabs = .quiz
    
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
            NavigationView {
                ZStack(alignment: .bottom) {
                    VStack {
                        topBar
                        
                        switch selectedTab {
                        case .quiz:
                            QuestionPickViewZodiakQuiz()
                        case .profile:
                            ProfileViewZodiakQuiz()
                        case .facts:
                            FactsViewZodiakQuiz()
                        case .questions:
                            QuestionsViewZodiakQuiz()
                        }
                        tapBar
                    }.background(2, padding: 0)
                }
            }
            
            LoadingViewSQ(showView: $showLoading)
                .opacity(showLoading ? 1: 0)
                .onChange(of: showLoading) { newValue in
                    AppDelegate.orientationLock = .portrait
                }
        }
    }
    
    private var topBar: some View {
        HStack {
            NavigationLink {
                PrivacyViewZodiakQuiz(showLoading: .constant(true), fromMainView: true)
            } label: {
                Text("Privacy policy")
                    .withFont(size: 16, weight: .light)
            }
            
            Spacer()
            
            Button {
                notificationsAvalible.toggle()
                if notificationsAvalible {
                    NotificationManagerZodiakQuiz.shared.createDailyNotification()
                } else {
                    NotificationManagerZodiakQuiz.shared.removePendingNotifications()
                }
            } label: {
                Image("notification.label")
                    .grayscale(notificationsAvalible ? 0: 1)
            }
        }.padding(.horizontal)
    }
    
    private var tapBar: some View {
        HStack {
            Button {
                selectedTab = .quiz
            } label: {
                Image("tab 1")
                    .opacity(selectedTab == .quiz ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .profile
            } label: {
                Image("tab 2")
                    .opacity(selectedTab == .profile ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .facts
            } label: {
                Image("tab 3")
                    .opacity(selectedTab == .facts ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .questions
            } label: {
                Image("tab 4")
                    .opacity(selectedTab == .questions ? 1: 0.6)
            }
        }.padding(.horizontal, 40)
            .padding(.vertical)
            .padding(.bottom, 50)
            .background {
                Color.hex("0F1922")
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            }
            .cornerRadius(41)
            .padding(.bottom, isSE ? -50: -60)
    }
}

#Preview {
    ContentViewZodiakQuiz(showLoading: false)
}


enum Tabs {
    case quiz
    case profile
    case facts
    case questions
}

