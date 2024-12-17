//
//  QuestionsView.swift
//  Zodiac-Quiz
//
//  Created by Improve on 16.12.2024.
//

import SwiftUI

struct QuestionsViewZodiakQuiz: View {
    @State var selectedQuestion: Tab4Question = Tab4Question.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
    var body: some View {
        VStack {
            if isInternetAvailable() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.question)
                            .withFont(size: 23, weight: .medium, color: .hex("7F37EF"))
                            .padding(.horizontal, 70)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .black: .white)
                                    .padding(.trailing, 40)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint2 ? .black: .white)
                                    .padding(.trailing, 40)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, isSE ? 0: 30)
                    .disabled(!showHint1)
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4Question.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answer: "Show answer")
                                    .withFont(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFont(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFont(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewZodiakQuiz(showLoading: false, selectedTab: .questions)
}

struct Tab4Question {
    let question: String
    let hint1: String
    let hint2: String
    let answer: String
    
    static let list: [Tab4Question] = [
        Tab4Question(
            question: "What is the only even prime number?",
            hint1: "It's less than 5.",
            hint2: "It's the first positive even number.",
            answer: "2"
        ),
        Tab4Question(
            question: "What is the longest river in the world?",
            hint1: "It is located in South America.",
            hint2: "It flows through the Amazon rainforest.",
            answer: "Amazon River"
        ),
        Tab4Question(
            question: "Who developed the theory of general relativity?",
            hint1: "He was a German physicist.",
            hint2: "His last name starts with 'E'.",
            answer: "Albert Einstein"
        ),
        Tab4Question(
            question: "Which element has the chemical symbol 'Hg'?",
            hint1: "It is also known as quicksilver.",
            hint2: "It is a liquid metal at room temperature.",
            answer: "Mercury"
        ),
        Tab4Question(
            question: "What is the smallest country in the world by area?",
            hint1: "It is located in Europe.",
            hint2: "It is an independent city-state within Rome.",
            answer: "Vatican City"
        ),
        Tab4Question(
            question: "Which planet has the most moons?",
            hint1: "It is a gas giant.",
            hint2: "It is known for its prominent ring system.",
            answer: "Saturn"
        ),
        Tab4Question(
            question: "What is the term for an organism that makes its own food using sunlight?",
            hint1: "It starts with 'A'.",
            hint2: "Examples include plants and algae.",
            answer: "Autotroph"
        ),
        Tab4Question(
            question: "Who wrote the novel '1984'?",
            hint1: "His pen name was not his real name.",
            hint2: "He also wrote 'Animal Farm'.",
            answer: "George Orwell"
        ),
        Tab4Question(
            question: "What is the hardest natural substance on Earth?",
            hint1: "It is a crystalline form of carbon.",
            hint2: "It is often used in jewelry.",
            answer: "Diamond"
        ),
        Tab4Question(
            question: "What is the square root of 144?",
            hint1: "It is a two-digit number.",
            hint2: "It is equal to a dozen.",
            answer: "12"
        ),
        Tab4Question(
            question: "What is the name of the first artificial Earth satellite?",
            hint1: "It was launched by the Soviet Union.",
            hint2: "Its name means 'companion' in Russian.",
            answer: "Sputnik 1"
        ),
        Tab4Question(
            question: "Which scientist discovered penicillin?",
            hint1: "He was a Scottish biologist.",
            hint2: "His first name is Alexander.",
            answer: "Alexander Fleming"
        ),
        Tab4Question(
            question: "What is the heaviest naturally occurring element?",
            hint1: "Its atomic number is 92.",
            hint2: "It is used as fuel in nuclear power plants.",
            answer: "Uranium"
        ),
        Tab4Question(
            question: "Which year did the Titanic sink?",
            hint1: "It was in the early 20th century.",
            hint2: "It happened in 1912.",
            answer: "1912"
        ),
        Tab4Question(
            question: "What is the chemical formula for table salt?",
            hint1: "It contains sodium and chlorine.",
            hint2: "Its formula is two letters and a number.",
            answer: "NaCl"
        ),
        Tab4Question(
            question: "Who painted the ceiling of the Sistine Chapel?",
            hint1: "He was an Italian Renaissance artist.",
            hint2: "His name starts with 'M'.",
            answer: "Michelangelo"
        ),
        Tab4Question(
            question: "What is the main gas found in the Earth's atmosphere?",
            hint1: "It makes up about 78% of the atmosphere.",
            hint2: "Its symbol is 'N'.",
            answer: "Nitrogen"
        ),
        Tab4Question(
            question: "What is the capital of Iceland?",
            hint1: "Its name starts with 'R'.",
            hint2: "It is known for its geothermal activity.",
            answer: "Reykjavik"
        ),
        Tab4Question(
            question: "Who was the first person to circumnavigate the globe?",
            hint1: "He was Portuguese, but sailed for Spain.",
            hint2: "His name starts with 'F'.",
            answer: "Ferdinand Magellan"
        ),
        Tab4Question(
            question: "Which mathematician is known as the 'father of geometry'?",
            hint1: "He was a Greek mathematician.",
            hint2: "His name starts with 'E'.",
            answer: "Euclid"
        ),
        Tab4Question(
            question: "Which planet is known as the 'Morning Star'?",
            hint1: "It is the second planet from the Sun.",
            hint2: "It is also called Earth's twin.",
            answer: "Venus"
        ),
        Tab4Question(
            question: "What is the smallest bone in the human body?",
            hint1: "It is located in the ear.",
            hint2: "It is also called the stirrup bone.",
            answer: "Stapes"
        ),
        Tab4Question(
            question: "What is the study of fungi called?",
            hint1: "It starts with 'M'.",
            hint2: "It ends with 'ology'.",
            answer: "Mycology"
        ),
        Tab4Question(
            question: "Which Roman emperor built a massive wall across Northern Britain?",
            hint1: "His wall's name is still known today.",
            hint2: "His name starts with 'H'.",
            answer: "Hadrian"
        ),
        Tab4Question(
            question: "Which metal is liquid at room temperature?",
            hint1: "Its symbol is 'Hg'.",
            hint2: "It is also called quicksilver.",
            answer: "Mercury"
        ),
        Tab4Question(
            question: "What is the hardest rock on Earth?",
            hint1: "It is made of crystallized carbon.",
            hint2: "It is often associated with jewelry.",
            answer: "Diamond"
        ),
        Tab4Question(
            question: "What is the name of the world's largest desert?",
            hint1: "It is not covered in sand.",
            hint2: "It is located in Antarctica.",
            answer: "Antarctic Desert"
        ),
        Tab4Question(
            question: "Who was the first woman to win a Nobel Prize?",
            hint1: "She was a physicist and chemist.",
            hint2: "Her name is Marie.",
            answer: "Marie Curie"
        ),
        Tab4Question(
            question: "Which gas is commonly known as laughing gas?",
            hint1: "It is used as an anesthetic in dentistry.",
            hint2: "Its chemical formula is N2O.",
            answer: "Nitrous oxide"
        ),
        Tab4Question(
            question: "What is the most abundant element in the universe?",
            hint1: "Its symbol is 'H'.",
            hint2: "It is the first element on the periodic table.",
            answer: "Hydrogen"
        ),
        Tab4Question(
            question: "What is the scientific name for the fear of spiders?",
            hint1: "It starts with 'A'.",
            hint2: "It ends with 'phobia'.",
            answer: "Arachnophobia"
        ),
        Tab4Question(
            question: "Which planet is the hottest in our solar system?",
            hint1: "It has a dense atmosphere of carbon dioxide.",
            hint2: "It is the second planet from the Sun.",
            answer: "Venus"
        ),
        Tab4Question(
            question: "What is the name of the largest ocean on Earth?",
            hint1: "It is located between Asia and the Americas.",
            hint2: "It covers more than 30% of Earth's surface.",
            answer: "Pacific Ocean"
        ),
        Tab4Question(
            question: "What is the main ingredient in traditional Japanese miso soup?",
            hint1: "It is made from fermented soybeans.",
            hint2: "Its name starts with 'M'.",
            answer: "Miso"
        ),
        Tab4Question(
            question: "Who was the first president of the United States?",
            hint1: "His face appears on the US one-dollar bill.",
            hint2: "His last name starts with 'W'.",
            answer: "George Washington"
        ),
        Tab4Question(
            question: "What is the smallest country in both area and population?",
            hint1: "It is located in Europe.",
            hint2: "It is the headquarters of the Roman Catholic Church.",
            answer: "Vatican City"
        ),
        Tab4Question(
            question: "What is the largest internal organ in the human body?",
            hint1: "It is involved in detoxification.",
            hint2: "Its name starts with 'L'.",
            answer: "Liver"
        ),
        Tab4Question(
            question: "Which element has the highest melting point?",
            hint1: "Its symbol is 'W'.",
            hint2: "It is used in light bulb filaments.",
            answer: "Tungsten"
        ),
        Tab4Question(
            question: "Who wrote the play 'Hamlet'?",
            hint1: "He was an English playwright.",
            hint2: "He is often called the Bard of Avon.",
            answer: "William Shakespeare"
        ),
        Tab4Question(
            question: "What is the name of the galaxy that contains our Solar System?",
            hint1: "It is named after a type of candy bar.",
            hint2: "Its name starts with 'Milky'.",
            answer: "Milky Way"
        ),
        Tab4Question(
            question: "Who was the Greek god of the underworld?",
            hint1: "His name starts with 'H'.",
            hint2: "His wife was Persephone.",
            answer: "Hades"
        ),
        Tab4Question(
            question: "Which is the only metal that is liquid at room temperature?",
            hint1: "It is also known as quicksilver.",
            hint2: "Its symbol is 'Hg'.",
            answer: "Mercury"
        ),
        Tab4Question(
            question: "What is the chemical formula for ozone?",
            hint1: "It contains three atoms of oxygen.",
            hint2: "Its formula is three letters.",
            answer: "O3"
        ),
        Tab4Question(
            question: "Who was the first person in space?",
            hint1: "He was a Soviet cosmonaut.",
            hint2: "His first name is Yuri.",
            answer: "Yuri Gagarin"
        ),
        Tab4Question(
            question: "What is the fastest land animal?",
            hint1: "It is a large cat.",
            hint2: "It can run up to 75 mph.",
            answer: "Cheetah"
        ),
        Tab4Question(
            question: "What is the SI unit of electric current?",
            hint1: "It is named after a French physicist.",
            hint2: "Its symbol is 'A'.",
            answer: "Ampere"
        ),
        Tab4Question(
            question: "What is the capital city of Australia?",
            hint1: "It is not Sydney or Melbourne.",
            hint2: "It starts with 'C'.",
            answer: "Canberra"
        ),
        Tab4Question(
            question: "What is the largest bone in the human body?",
            hint1: "It is located in the leg.",
            hint2: "It is also known as the thigh bone.",
            answer: "Femur"
        ),
        Tab4Question(
            question: "What is the speed of light in a vacuum?",
            hint1: "It is approximately 300,000 km/s.",
            hint2: "It is measured in meters per second.",
            answer: "299,792,458 m/s"
        ),
        Tab4Question(
            question: "Which animal is known as the king of the jungle?",
            hint1: "It is a big cat.",
            hint2: "It is known for its mane.",
            answer: "Lion"
        ),
        Tab4Question(
            question: "What is the most abundant gas in the Earth's atmosphere?",
            hint1: "It makes up 78% of the atmosphere.",
            hint2: "Its symbol is 'N'.",
            answer: "Nitrogen"
        ),
        Tab4Question(
            question: "Which planet is known as the Red Planet?",
            hint1: "It is the fourth planet from the Sun.",
            hint2: "Its name starts with 'M'.",
            answer: "Mars"
        ),
        Tab4Question(
            question: "What is the rarest blood type?",
            hint1: "It is a universal plasma donor type.",
            hint2: "It is a combination of two common blood groups.",
            answer: "AB-"
        ),
        Tab4Question(
            question: "What is the longest bone in the human body?",
            hint1: "It is located in the thigh.",
            hint2: "It starts with 'F'.",
            answer: "Femur"
        ),
        Tab4Question(
            question: "Which organ is responsible for pumping blood?",
            hint1: "It has four chambers.",
            hint2: "It starts with 'H'.",
            answer: "Heart"
        ),
        Tab4Question(
            question: "What is the capital of Japan?",
            hint1: "It is the largest city in Japan.",
            hint2: "It starts with 'T'.",
            answer: "Tokyo"
        ),
        Tab4Question(
            question: "What is the main ingredient in guacamole?",
            hint1: "It is a green fruit.",
            hint2: "It starts with 'A'.",
            answer: "Avocado"
        ),
        Tab4Question(
            question: "Who developed the theory of evolution by natural selection?",
            hint1: "He wrote 'On the Origin of Species'.",
            hint2: "His last name is Darwin.",
            answer: "Charles Darwin"
        ),
        Tab4Question(
            question: "What is the hardest natural substance on Earth?",
            hint1: "It is used in cutting tools.",
            hint2: "It is made of carbon.",
            answer: "Diamond"
        ),
        Tab4Question(
            question: "What is the name of the ship that carried the Pilgrims to America?",
            hint1: "It is a compound word starting with 'May'.",
            hint2: "It ends with 'flower'.",
            answer: "Mayflower"
        ),
        Tab4Question(
            question: "What is the tallest mountain in the world?",
            hint1: "It is located in the Himalayas.",
            hint2: "Its height is 8,848 meters.",
            answer: "Mount Everest"
        ),
        Tab4Question(
            question: "Which organ is responsible for filtering blood?",
            hint1: "Humans have two of them.",
            hint2: "Their name starts with 'K'.",
            answer: "Kidneys"
        ),
        Tab4Question(
            question: "What is the most spoken language in the world?",
            hint1: "It is spoken in China.",
            hint2: "It starts with 'M'.",
            answer: "Mandarin Chinese"
        ),
        Tab4Question(
            question: "What is the largest planet in the Solar System?",
            hint1: "It is a gas giant.",
            hint2: "It is the fifth planet from the Sun.",
            answer: "Jupiter"
        ),
        Tab4Question(
            question: "Which Shakespeare play features the characters Rosencrantz and Guildenstern?",
            hint1: "It is one of his tragedies.",
            hint2: "It is set in Denmark.",
            answer: "Hamlet"
        ),
        Tab4Question(
            question: "Which chemical element has the atomic number 1?",
            hint1: "It is the lightest element.",
            hint2: "Its symbol is 'H'.",
            answer: "Hydrogen"
        ),
        Tab4Question(
            question: "Who painted the Mona Lisa?",
            hint1: "He was an Italian Renaissance artist.",
            hint2: "His name starts with 'Leonardo'.",
            answer: "Leonardo da Vinci"
        )
    ]
}


import Network

func isInternetAvailable() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
