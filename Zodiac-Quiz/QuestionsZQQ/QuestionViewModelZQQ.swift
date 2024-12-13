//
//  QuestionViewModel.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//
import SwiftUI

class QuestionViewModelZQQ: ObservableObject {
    let typeOfGame: GameTypeZQ
    
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
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCount = 3
    @Published var questionNumber = 1
    
    @Published var player1RightAnswers = 0
    @Published var player2RightAnswers = 0
    
    
    @Published var listOfQuestions: [QuestionZQ]
    @Published var answer = ""
    
    @Published var showFinishView = false
    @Published var showEnterView = false
    
    var currentQuestion: QuestionZQ {
        listOfQuestions[questionNumber - 1]
    }
    
    init(typeOfGame: GameTypeZQ) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterView = true }
        listOfQuestions =  Array(QuestionZQ.advancedQuestions.shuffled().prefix(20))
    }
    
    func answerTheQuestion(answer: String) {
        self.answer = answer
        
        if answer == currentQuestion.correctAnswer {
            if questionNumber % 2 == 0 { player2RightAnswers += 1 } else { player1RightAnswers += 1 }
        } else if typeOfGame == .oneP {
            heartCount -= 1
            if heartCount <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishView = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumber >= 20 {
                showFinishView = true
            } else {
                self.answer = ""
                questionNumber += 1
            }
        }
    }
}


enum GameTypeZQ {
    case oneP
    case withC
    case withF
}

struct QuestionZQ {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let rvrgv = "fwtfwrtf"
    static let advancedQuestions: [QuestionZQ] = [
        QuestionZQ(
                question: "What is the chemical symbol for silver?",
                correctAnswer: "Ag",
                answerOptions: ["Ag", "Au", "Cu", "Pb"]
            ),
            QuestionZQ(
                question: "Which organ in the human body is responsible for filtering blood?",
                correctAnswer: "Kidneys",
                answerOptions: ["Heart", "Lungs", "Liver", "Kidneys"]
            ),
            QuestionZQ(
                question: "What is the largest animal in the world?",
                correctAnswer: "Blue whale",
                answerOptions: ["Elephant", "Blue whale", "Giraffe", "Sperm whale"]
            ),
            QuestionZQ(
                question: "Which metal is commonly used for making electrical wires?",
                correctAnswer: "Copper",
                answerOptions: ["Copper", "Iron", "Aluminum", "Silver"]
            ),
            QuestionZQ(
                question: "Which planet orbits the Sun the fastest?",
                correctAnswer: "Mercury",
                answerOptions: ["Mercury", "Venus", "Mars", "Jupiter"]
            ),
            QuestionZQ(
                question: "What is the largest desert in the world?",
                correctAnswer: "Sahara",
                answerOptions: ["Sahara", "Gobi", "Kalahari", "Antarctica"]
            ),
            QuestionZQ(
                question: "Who wrote 'The Testament'?",
                correctAnswer: "Taras Shevchenko",
                answerOptions: ["Lesya Ukrainka", "Ivan Franko", "Taras Shevchenko", "Mykola Khvylovy"]
            ),
            QuestionZQ(
                question: "What gas do plants release during photosynthesis?",
                correctAnswer: "Oxygen",
                answerOptions: ["Carbon dioxide", "Oxygen", "Hydrogen", "Nitrogen"]
            ),
            QuestionZQ(
                question: "What is the capital of Germany?",
                correctAnswer: "Berlin",
                answerOptions: ["Munich", "Berlin", "Hamburg", "Cologne"]
            ),
            QuestionZQ(
                question: "Which element has the atomic number 1?",
                correctAnswer: "Hydrogen",
                answerOptions: ["Hydrogen", "Helium", "Oxygen", "Nitrogen"]
            ),
        QuestionZQ(
            question: "What is the speed of sound in air at sea level?",
            correctAnswer: "343 m/s",
            answerOptions: ["300 m/s", "343 m/s", "400 m/s", "500 m/s"]
        ),
        QuestionZQ(
            question: "Which Nobel Prize category was first awarded in 1969?",
            correctAnswer: "Economic Sciences",
            answerOptions: ["Physics", "Literature", "Economic Sciences", "Medicine"]
        ),
        QuestionZQ(
            question: "What is the primary function of red blood cells?",
            correctAnswer: "To carry oxygen",
            answerOptions: ["To fight infections", "To carry oxygen", "To clot blood", "To regulate temperature"]
        ),
        QuestionZQ(
            question: "Who painted the ceiling of the Sistine Chapel?",
            correctAnswer: "Michelangelo",
            answerOptions: ["Leonardo da Vinci", "Raphael", "Michelangelo", "Donatello"]
        ),
        QuestionZQ(
            question: "What is the capital city of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Kyoto", "Tokyo", "Osaka", "Nagoya"]
        ),
        QuestionZQ(
            question: "What is the term for the study of fungi?",
            correctAnswer: "Mycology",
            answerOptions: ["Entomology", "Mycology", "Botany", "Zoology"]
        ),
        QuestionZQ(
            question: "What is the SI unit of force?",
            correctAnswer: "Newton",
            answerOptions: ["Pascal", "Newton", "Joule", "Watt"]
        ),
        QuestionZQ(
            question: "Which country invented gunpowder?",
            correctAnswer: "China",
            answerOptions: ["India", "China", "Greece", "Persia"]
        ),
        QuestionZQ(
            question: "What is the largest organ in the human body?",
            correctAnswer: "Skin",
            answerOptions: ["Liver", "Heart", "Skin", "Brain"]
        ),
        QuestionZQ(
            question: "What is the boiling point of water at sea level?",
            correctAnswer: "100°C",
            answerOptions: ["90°C", "100°C", "110°C", "120°C"]
        ),
        QuestionZQ(
            question: "What is the chemical formula for table salt?",
            correctAnswer: "NaCl",
            answerOptions: ["KCl", "NaCl", "HCl", "NaOH"]
        ),
        QuestionZQ(
            question: "What is the capital of Italy?",
            correctAnswer: "Rome",
            answerOptions: ["Venice", "Rome", "Florence", "Milan"]
        ),
        QuestionZQ(
            question: "Which layer of the Earth lies below the crust?",
            correctAnswer: "Mantle",
            answerOptions: ["Core", "Mantle", "Lithosphere", "Asthenosphere"]
        ),
        QuestionZQ(
            question: "What is the primary greenhouse gas responsible for global warming?",
            correctAnswer: "Carbon Dioxide",
            answerOptions: ["Methane", "Oxygen", "Carbon Dioxide", "Nitrogen"]
        ),
        QuestionZQ(
            question: "Who wrote the play 'Hamlet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["Christopher Marlowe", "William Shakespeare", "John Milton", "Ben Jonson"]
        ),
        QuestionZQ(
            question: "What is the square root of 144?",
            correctAnswer: "12",
            answerOptions: ["11", "12", "13", "14"]
        ),
        QuestionZQ(
            question: "What is the largest planet in the Solar System?",
            correctAnswer: "Jupiter",
            answerOptions: ["Earth", "Jupiter", "Saturn", "Uranus"]
        ),
        QuestionZQ(
            question: "What is the process plants use to convert sunlight into food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Respiration", "Photosynthesis", "Digestion", "Transpiration"]
        ),
        QuestionZQ(
            question: "What is the smallest unit of life?",
            correctAnswer: "Cell",
            answerOptions: ["Atom", "Cell", "Molecule", "Organ"]
        ),
        QuestionZQ(
            question: "Which planet is the hottest in the Solar System?",
            correctAnswer: "Venus",
            answerOptions: ["Mercury", "Venus", "Mars", "Jupiter"]
        ),
        QuestionZQ(
            question: "What is the chemical formula for water?",
            correctAnswer: "H₂O",
            answerOptions: ["H₂O", "O₂", "CO₂", "H₂"]
        ),
        QuestionZQ(
            question: "Who is the author of 'The Origin of Species'?",
            correctAnswer: "Charles Darwin",
            answerOptions: ["Gregor Mendel", "Charles Darwin", "Carl Linnaeus", "Alfred Wallace"]
        ),
        QuestionZQ(
            question: "What is the name of the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Arctic Ocean"]
        ),
        QuestionZQ(
            question: "Which element is represented by the symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Oxalate", "Ozone"]
        ),
        QuestionZQ(
            question: "Which scientist developed the first vaccine for rabies?",
            correctAnswer: "Louis Pasteur",
            answerOptions: ["Alexander Fleming", "Edward Jenner", "Louis Pasteur", "Marie Curie"]
        ),
        QuestionZQ(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["Rome", "Paris", "Berlin", "Madrid"]
        ),
        QuestionZQ(
            question: "What is the atomic number of Hydrogen?",
            correctAnswer: "1",
            answerOptions: ["1", "2", "3", "4"]
        ),
        QuestionZQ(
            question: "What is the largest mammal on Earth?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Elephant", "Blue Whale", "Giraffe", "Orca"]
        ),
        QuestionZQ(
            question: "What is the primary ingredient in glass?",
            correctAnswer: "Sand",
            answerOptions: ["Sand", "Silicon", "Salt", "Clay"]
        ),
        QuestionZQ(
            question: "What is the capital city of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Sydney", "Melbourne", "Canberra", "Brisbane"]
        ),
        QuestionZQ(
            question: "What is the largest bone in the human body?",
            correctAnswer: "Femur",
            answerOptions: ["Femur", "Tibia", "Humerus", "Pelvis"]
        ),
        QuestionZQ(
            question: "Which gas do plants primarily use during photosynthesis?",
            correctAnswer: "Carbon Dioxide",
            answerOptions: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"]
        ),
        QuestionZQ(
            question: "What is the name of the smallest planet in the Solar System?",
            correctAnswer: "Mercury",
            answerOptions: ["Venus", "Mercury", "Mars", "Pluto"]
        ),
        QuestionZQ(
            question: "Who is known as the father of modern chemistry?",
            correctAnswer: "Antoine Lavoisier",
            answerOptions: ["Dmitri Mendeleev", "Robert Boyle", "Antoine Lavoisier", "John Dalton"]
        ),
        QuestionZQ(
            question: "What is the main source of energy for life on Earth?",
            correctAnswer: "The Sun",
            answerOptions: ["The Moon", "The Sun", "Volcanoes", "Ocean Currents"]
        ),
        QuestionZQ(
            question: "What is the longest river in the world?",
            correctAnswer: "The Nile",
            answerOptions: ["The Amazon", "The Nile", "The Yangtze", "The Mississippi"]
        ),
        QuestionZQ(
            question: "Which organ is responsible for pumping blood throughout the human body?",
            correctAnswer: "Heart",
            answerOptions: ["Lungs", "Heart", "Liver", "Kidneys"]
        ),
        QuestionZQ(
            question: "What is the name of the closest star to Earth?",
            correctAnswer: "The Sun",
            answerOptions: ["Alpha Centauri", "The Sun", "Sirius", "Proxima Centauri"]
        ),
        QuestionZQ(
            question: "Who is credited with discovering penicillin?",
            correctAnswer: "Alexander Fleming",
            answerOptions: ["Marie Curie", "Alexander Fleming", "Louis Pasteur", "Gregor Mendel"]
        ),
        QuestionZQ(
            question: "What is the chemical formula for carbon dioxide?",
            correctAnswer: "CO₂",
            answerOptions: ["CO", "CO₂", "C₂O", "C₃O₂"]
        ),
        QuestionZQ(
            question: "What is the term for animals that eat both plants and meat?",
            correctAnswer: "Omnivores",
            answerOptions: ["Herbivores", "Omnivores", "Carnivores", "Insectivores"]
        ),
        QuestionZQ(
            question: "Which country has the largest population in the world?",
            correctAnswer: "China",
            answerOptions: ["India", "China", "United States", "Indonesia"]
        ),
        QuestionZQ(
            question: "What is the name of the instrument used to measure atmospheric pressure?",
            correctAnswer: "Barometer",
            answerOptions: ["Thermometer", "Barometer", "Hygrometer", "Anemometer"]
        ),
        QuestionZQ(
            question: "Which process converts sugar into alcohol?",
            correctAnswer: "Fermentation",
            answerOptions: ["Photosynthesis", "Fermentation", "Oxidation", "Condensation"]
        ),
        QuestionZQ(
            question: "What is the chemical symbol for potassium?",
            correctAnswer: "K",
            answerOptions: ["P", "K", "Pt", "Po"]
        ),
        QuestionZQ(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Iron", "Diamond", "Platinum"]
        ),
        QuestionZQ(
            question: "Which planet is known for its prominent ring system?",
            correctAnswer: "Saturn",
            answerOptions: ["Jupiter", "Uranus", "Saturn", "Neptune"]
        ),
        QuestionZQ(
            question: "What is the SI unit of temperature?",
            correctAnswer: "Kelvin",
            answerOptions: ["Celsius", "Kelvin", "Fahrenheit", "Rankine"]
        ),
        QuestionZQ(
            question: "Which animal is known as the King of the Jungle?",
            correctAnswer: "Lion",
            answerOptions: ["Tiger", "Elephant", "Lion", "Leopard"]
        ),
        QuestionZQ(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Ag", "Au", "Pb", "Pt"]
        ),
        QuestionZQ(
            question: "What is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["K2", "Mount Everest", "Kangchenjunga", "Makalu"]
        ),
        QuestionZQ(
            question: "Which organ in the human body filters blood to produce urine?",
            correctAnswer: "Kidney",
            answerOptions: ["Liver", "Kidney", "Bladder", "Heart"]
        ),
        QuestionZQ(
            question: "What is the term for molten rock beneath the Earth's surface?",
            correctAnswer: "Magma",
            answerOptions: ["Lava", "Magma", "Basalt", "Obsidian"]
        ),
        QuestionZQ(
            question: "What is the main ingredient in bread?",
            correctAnswer: "Flour",
            answerOptions: ["Flour", "Sugar", "Yeast", "Salt"]
        ),
        QuestionZQ(
            question: "Which planet is known as the Evening Star?",
            correctAnswer: "Venus",
            answerOptions: ["Venus", "Mars", "Mercury", "Jupiter"]
        ),
        QuestionZQ(
            question: "Which scientist developed the periodic table of elements?",
            correctAnswer: "Dmitri Mendeleev",
            answerOptions: ["Dmitri Mendeleev", "Marie Curie", "Niels Bohr", "Antoine Lavoisier"]
        ),
        QuestionZQ(
            question: "What is the primary language spoken in Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Spanish", "Portuguese", "French", "Italian"]
        ),
        QuestionZQ(
            question: "What is the freezing point of water in Fahrenheit?",
            correctAnswer: "32°F",
            answerOptions: ["0°F", "32°F", "100°F", "212°F"]
        ),
        QuestionZQ(
            question: "Which metal is liquid at room temperature?",
            correctAnswer: "Mercury",
            answerOptions: ["Gold", "Mercury", "Iron", "Copper"]
        ),
        QuestionZQ(
            question: "Which ancient civilization built the pyramids?",
            correctAnswer: "Egyptians",
            answerOptions: ["Romans", "Egyptians", "Greeks", "Babylonians"]
        ),
        QuestionZQ(
            question: "What is the primary source of energy for Earth's climate?",
            correctAnswer: "The Sun",
            answerOptions: ["The Moon", "Volcanoes", "The Sun", "Ocean Currents"]
        ),
        QuestionZQ(
            question: "Which gas is commonly known as laughing gas?",
            correctAnswer: "Nitrous Oxide",
            answerOptions: ["Carbon Dioxide", "Nitrous Oxide", "Helium", "Oxygen"]
        ),
        QuestionZQ(
            question: "Who is the author of 'Pride and Prejudice'?",
            correctAnswer: "Jane Austen",
            answerOptions: ["Charlotte Brontë", "Jane Austen", "Mary Shelley", "Emily Brontë"]
        ),
        QuestionZQ(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["China", "Japan", "South Korea", "Thailand"]
        ),
        QuestionZQ(
            question: "What is the currency of the United Kingdom?",
            correctAnswer: "Pound Sterling",
            answerOptions: ["Euro", "Pound Sterling", "Dollar", "Franc"]
        ),
        QuestionZQ(
            question: "What is the process by which a caterpillar becomes a butterfly?",
            correctAnswer: "Metamorphosis",
            answerOptions: ["Transformation", "Metamorphosis", "Evolution", "Fertilization"]
        ),
        QuestionZQ(
            question: "Which planet has the strongest gravitational pull in the Solar System?",
            correctAnswer: "Jupiter",
            answerOptions: ["Earth", "Jupiter", "Neptune", "Saturn"]
        ),
        QuestionZQ(
            question: "What is the most common blood type in humans?",
            correctAnswer: "O+",
            answerOptions: ["A+", "O+", "B+", "AB+"]
        ),
        QuestionZQ(
            question: "Which is the only planet that rotates on its side?",
            correctAnswer: "Uranus",
            answerOptions: ["Venus", "Neptune", "Uranus", "Saturn"]
        ),
        QuestionZQ(
            question: "Which element is used in pencils?",
            correctAnswer: "Graphite",
            answerOptions: ["Lead", "Graphite", "Carbon", "Zinc"]
        ),
        QuestionZQ(
            question: "What is the capital city of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Toronto", "Vancouver", "Ottawa", "Montreal"]
        ),
        QuestionZQ(
            question: "Which planet is the densest in the Solar System?",
            correctAnswer: "Earth",
            answerOptions: ["Mars", "Jupiter", "Earth", "Venus"]
        ),
        QuestionZQ(
            question: "Who discovered the law of gravity?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Nikola Tesla"]
        ),
        QuestionZQ(
            question: "Which organelle contains the genetic material of a cell?",
            correctAnswer: "Nucleus",
            answerOptions: ["Mitochondria", "Nucleus", "Ribosome", "Golgi Apparatus"]
        ),
        QuestionZQ(
            question: "What is the name of the largest internal organ in the human body?",
            correctAnswer: "Liver",
            answerOptions: ["Heart", "Liver", "Stomach", "Lungs"]
        ),
        QuestionZQ(
            question: "What is the name of the galaxy that contains our Solar System?",
            correctAnswer: "Milky Way",
            answerOptions: ["Andromeda", "Milky Way", "Sombrero", "Triangulum"]
        )
    ]
}
