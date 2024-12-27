//
//  FactsView.swift
//  5A-Spirit-Quiz
//
//  Created by Improve on 25.10.2024.
//

import SwiftUI

struct FactsViewZodiakQuiz: View {
    @State var timer: Timer?
    @State var selectedFact: FactZodiakQuiz? = facts.randomElement()!
    @State var showSheet = false
    
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
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFont(size: 22, weight: .regular, color: .hex("6ED900"))
                                .padding(.top, 16)
                            Spacer()
                            Text(fact.content)
                                .withFont(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFont(size: 15.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = facts.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .overlay {
                            Text("NEXT")
                                .withFont(size: 18.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetView
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetView: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFont(size: 22, weight: .regular, color: .hex("46BE42"))
                    .padding(.top, 12)
                
                Text(fact.content)
                    .withFont(size: 19.5, weight: .thin)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("46BE42"))
                    
                    Rectangle()
                        .foregroundColor(.hex("6520BB"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFont(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.hex("6520BB")
                .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    ContentViewZodiakQuiz(showLoading: false, selectedTab: .facts)
}


struct FactZodiakQuiz {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let facts: [FactZodiakQuiz] = [
    FactZodiakQuiz(title: "The Shortest War", content: "The Anglo-Zanzibar War, fought in 1896, is recognized as the shortest war in recorded history, lasting only 38 minutes. The conflict arose when Sultan Khalid bin Barghash assumed power without British approval, leading to a rapid military intervention. The British navy bombarded the Sultan's palace, causing significant damage and forcing a swift surrender. Despite its brevity, this war highlights the tense colonial dynamics of the time."),
    FactZodiakQuiz(title: "Octopus Has Three Hearts", content: "Octopuses are fascinating creatures with three hearts. Two pump blood to the gills, ensuring oxygenation, while the third pumps it to the rest of the body. Interestingly, when an octopus swims, the heart responsible for systemic circulation temporarily stops beating, making swimming an energy-intensive activity. Their blue blood, rich in copper-based hemocyanin, allows them to thrive in cold, low-oxygen environments."),
    FactZodiakQuiz(title: "Jellyfish Without Brain", content: "Jellyfish are one of the oldest multicellular organisms on Earth, existing for over 500 million years. Despite lacking a brain, heart, or lungs, they have survived through their decentralized nerve nets, which allow them to sense the environment and coordinate movements. Their bodies consist mostly of water, and their tentacles are equipped with specialized cells for stinging and capturing prey."),
    FactZodiakQuiz(title: "Sharks’ Ancient Existence", content: "Sharks have been swimming in the oceans for over 400 million years, predating dinosaurs by millions of years. These ancient predators have evolved into a variety of species, from the massive whale shark to the agile great white. Their skeletons are made of cartilage, not bone, making them lighter and more flexible. Sharks' unique electroreceptive organs, called ampullae of Lorenzini, allow them to detect even faint electrical signals from prey."),
    FactZodiakQuiz(title: "Tree Communication Network", content: "Trees in a forest are connected by underground networks of fungi, known as mycorrhizae. These 'wood wide webs' allow trees to share nutrients and water, warn each other of pests, and even support weaker trees. For example, a mother tree can allocate extra resources to its offspring, ensuring their survival. This symbiotic relationship between fungi and trees is essential for healthy ecosystems."),
    FactZodiakQuiz(title: "Antarctica’s Dry Valleys", content: "The McMurdo Dry Valleys in Antarctica are one of the driest places on Earth, with some areas having not seen rain for millions of years. Despite the harsh conditions, microbial life thrives beneath the surface, showcasing the incredible adaptability of life. These valleys serve as a model for studying extraterrestrial environments, such as Mars."),
    FactZodiakQuiz(title: "Deep Ocean Exploration", content: "More than 80% of the world's oceans remain unexplored. The deep sea, a dark and pressure-intensive environment, is home to unique creatures like the anglerfish and giant squid. Advances in technology, such as remotely operated vehicles (ROVs), are allowing scientists to uncover the mysteries of these uncharted depths, revealing ecosystems that thrive without sunlight."),
    FactZodiakQuiz(title: "The Northern Lights", content: "Auroras, also known as the Northern and Southern Lights, are stunning displays of natural light in the polar skies. They are caused by charged particles from the Sun colliding with Earth's magnetic field and atmosphere. The colors, ranging from green to red to purple, depend on the type of gas involved and the altitude of the interaction. Auroras have fascinated humans for centuries, inspiring myths and scientific inquiry."),
    FactZodiakQuiz(title: "Honeybees and Mathematics", content: "Honeybees are not just skilled pollinators but also mathematical geniuses. They construct their hives using hexagonal cells, a shape that optimizes space and minimizes material use. Studies have also shown that honeybees can perform basic arithmetic, such as addition and subtraction, and understand the concept of zero, demonstrating cognitive abilities rare in the animal kingdom."),
    FactZodiakQuiz(title: "The Immortal Jellyfish", content: "The Turritopsis dohrnii, often called the 'immortal jellyfish,' has a unique ability to revert its cells to an earlier stage of life when faced with environmental stress or injury. This process, known as transdifferentiation, allows it to potentially live forever under ideal conditions. Scientists are studying this remarkable organism to unlock secrets of aging and cellular regeneration."),
    FactZodiakQuiz(title: "The Great Wall of China", content: "The Great Wall of China stretches over 13,000 miles, making it the longest structure ever built by humans. Constructed over centuries, it was initially designed to protect against invasions. Surprisingly, much of the wall is not visible today due to erosion and theft of bricks for local buildings."),
        FactZodiakQuiz(title: "Volcanoes Can Create Lightning", content: "During a volcanic eruption, lightning can occur within the ash cloud. This phenomenon, known as 'dirty thunderstorms,' is caused by collisions between ash particles that generate static electricity, producing stunning lightning bolts."),
        FactZodiakQuiz(title: "Bats Are the Only Flying Mammals", content: "Bats are unique as the only mammals capable of sustained flight. Their wings, made of stretched skin over elongated fingers, allow precise control and maneuverability. They also use echolocation to navigate and hunt in complete darkness."),
        FactZodiakQuiz(title: "Banana Plants Are Herbs", content: "Despite their size and tree-like appearance, banana plants are classified as herbs. This is because their 'trunk' is actually made of tightly packed leaf bases rather than woody material. Each plant produces only one bunch of bananas before dying back and regenerating."),
        FactZodiakQuiz(title: "Lake Baikal's Depth and Age", content: "Lake Baikal in Siberia is the world's deepest and oldest freshwater lake, reaching depths of over 5,300 feet and dating back 25 million years. It contains about 20% of Earth's unfrozen freshwater, making it a critical ecological and hydrological site."),
        FactZodiakQuiz(title: "Sloths’ Algae Gardens", content: "Sloths host a unique ecosystem in their fur, including algae, which provides camouflage, and moths that contribute to nutrient recycling. This symbiotic relationship is an excellent example of how species adapt and thrive together."),
        FactZodiakQuiz(title: "Venus Spins Backward", content: "Unlike most planets in the solar system, Venus spins in the opposite direction of its orbit around the Sun. This retrograde rotation means the Sun rises in the west and sets in the east on Venus, taking about 243 Earth days to complete one rotation."),
        FactZodiakQuiz(title: "Koalas Have Unique Fingerprints", content: "Koalas are one of the few non-primates that have fingerprints, and their patterns are so similar to human fingerprints that they can confuse crime scene investigations. These fingerprints help koalas grip tree branches as they climb."),
        FactZodiakQuiz(title: "The Pacific Garbage Patch", content: "The Great Pacific Garbage Patch, located between California and Hawaii, is the largest accumulation of ocean plastic in the world. It spans over 1.6 million square kilometers and contains an estimated 1.8 trillion pieces of plastic, highlighting the critical need for environmental action."),
        FactZodiakQuiz(title: "Space Smells Like Burnt Steak", content: "Astronauts have reported that space has a distinct smell, often described as similar to burnt steak or welding fumes. This odor comes from the byproducts of dying stars, such as polycyclic aromatic hydrocarbons, which astronauts encounter when re-entering their spacecraft."),
    FactZodiakQuiz(title: "The Earth’s Magnetic Field Reverses", content: "The Earth's magnetic field has reversed many times throughout history, with the magnetic poles switching places. This phenomenon, known as geomagnetic reversal, happens every few hundred thousand years. Despite the reversals, life on Earth has continued without major disruption."),
        FactZodiakQuiz(title: "Sharks Have Been Around for 400 Million Years", content: "Sharks are one of the oldest living species, having been around for over 400 million years, even before the dinosaurs. Their ability to adapt to changing environments and their highly effective predatory traits have allowed them to survive through multiple mass extinctions."),
        FactZodiakQuiz(title: "There’s a Cloud of Alcohol in Space", content: "Astronomers have discovered a massive cloud of alcohol floating in space, specifically in a star-forming region about 10,000 light-years from Earth. This cloud, made primarily of ethanol, is the largest such cloud ever found and is part of a complex environment where new stars and planets are born."),
        FactZodiakQuiz(title: "Wombats Have Cube-Shaped Poop", content: "Wombats produce cube-shaped poop, which is a rare and unusual trait in the animal kingdom. This unique feature helps the poop stay in place and mark territory, reducing the risk of it rolling away. The shape is due to the slow digestive process and the elasticity of the wombat's intestines."),
        FactZodiakQuiz(title: "The Eiffel Tower Can Grow Taller in Winter", content: "The Eiffel Tower can actually grow taller in winter due to the contraction of the metal in the colder temperatures. The tower, made of iron, can shrink by about 6 inches during the colder months, and it returns to its original height when it warms up."),
        FactZodiakQuiz(title: "Octopuses Have Three Hearts", content: "Octopuses are fascinating creatures with three hearts. Two pump blood to the gills, while the third pumps it to the rest of the body. Interestingly, when an octopus swims, the heart that delivers blood to the body stops beating, which is why they prefer crawling to swimming."),
        FactZodiakQuiz(title: "The Largest Volcano in the Solar System", content: "Olympus Mons, located on Mars, is the largest volcano in the solar system. It stands nearly 13.6 miles (22 kilometers) high, which is almost three times the height of Mount Everest. Its base spans about 370 miles (600 kilometers), making it one of the most massive geological structures in our solar system."),
        FactZodiakQuiz(title: "The Hottest Planet is Not the Closest to the Sun", content: "While Mercury is the closest planet to the Sun, Venus holds the title for the hottest planet in our solar system. This is due to its thick atmosphere made of carbon dioxide, which traps heat through the greenhouse effect. Surface temperatures on Venus can reach over 900°F (475°C), hotter than Mercury."),
        FactZodiakQuiz(title: "Slime Molds Can Solve Puzzles", content: "Slime molds, despite lacking a brain, can solve complex puzzles and navigate mazes. In experiments, slime molds have been shown to find the most efficient routes to food sources, demonstrating a surprising level of problem-solving and adaptability."),
        FactZodiakQuiz(title: "Honey Never Spoils", content: "Archaeologists have found pots of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible. The remarkable preservation of honey is due to its low moisture content and natural acidity, which prevent bacteria and microorganisms from growing."),
        FactZodiakQuiz(title: "A Single Strand of Spider Silk is Stronger Than Steel", content: "Spider silk is an extraordinary material. It is stronger than steel by weight and is also incredibly flexible and durable. Some species of spiders produce silk that can stretch up to five times its original length, making it an ideal substance for various biological functions, such as building webs or protecting eggs."),
        FactZodiakQuiz(title: "An Octopus Can Change Its Color and Texture", content: "Octopuses have specialized cells called chromatophores that allow them to change their color in an instant, helping them blend in with their surroundings. They can also change the texture of their skin, making them incredibly adept at camouflage and evading predators."),
        FactZodiakQuiz(title: "The Amazon Rainforest Produces 20% of the World’s Oxygen", content: "The Amazon Rainforest, often referred to as the 'lungs of the Earth,' produces approximately 20% of the world's oxygen. This vast tropical forest plays a crucial role in regulating the planet’s climate and maintaining a balanced ecosystem, but deforestation is threatening its ability to do so."),
        FactZodiakQuiz(title: "Some Fish Can Walk on Land", content: "Certain species of fish, like mudskippers, have evolved the ability to 'walk' on land. They use their fins to propel themselves across the ground, allowing them to move between different pools of water in search of food or to avoid predators."),
        FactZodiakQuiz(title: "Butterflies Taste with Their Feet", content: "Butterflies have taste sensors on their feet, allowing them to 'taste' plants by landing on them. This ability helps them find suitable plants for laying their eggs, as they can determine if the plant is the right one by detecting the chemicals it emits."),
        FactZodiakQuiz(title: "The Shortest War in History", content: "The Anglo-Zanzibar War, fought between the United Kingdom and the Sultanate of Zanzibar in 1896, is considered the shortest war in history. It lasted between 38 and 45 minutes, with Zanzibar eventually surrendering after the British fired on their palace."),
        FactZodiakQuiz(title: "Jellyfish Can Regenerate", content: "Some species of jellyfish, particularly the Turritopsis dohrnii, are biologically immortal. When faced with injury or aging, they can revert to an earlier stage in their life cycle, essentially starting life anew and avoiding death indefinitely under ideal conditions."),
        FactZodiakQuiz(title: "Caffeine is a Natural Pesticide", content: "Caffeine, which is naturally found in coffee, tea, and other plants, acts as a pesticide. It paralyzes and kills insects that try to consume it, making it a natural defense mechanism for plants."),
        FactZodiakQuiz(title: "Mushrooms Can Be Used to Clean Oil Spills", content: "Certain types of mushrooms, particularly the oyster mushroom, have been shown to absorb and break down toxins like oil in contaminated environments. This process, known as mycoremediation, harnesses the natural power of fungi to help clean up pollutants from the environment."),
        FactZodiakQuiz(title: "The Eiffel Tower Was Almost Demolished", content: "When the Eiffel Tower was first built for the 1889 World’s Fair in Paris, many people thought it was an eyesore and wanted to demolish it. Its original purpose was to be a temporary exhibit, but its usefulness as a radio transmission tower saved it from being torn down."),
        FactZodiakQuiz(title: "The Largest Living Organism", content: "The largest living organism on Earth is a fungus located in Oregon’s Malheur National Forest. This underground mycelial network, known as the Armillaria ostoyae, spans over 2,385 acres and is estimated to be thousands of years old."),
    
]
