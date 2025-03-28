//
//  AppSession.swift
//  Drunky
//
//  Created by Daniel Atitienei on 27.03.2025.
//

import Foundation

class AppSession: ObservableObject {
    
    @Published var players: [String] = []
    
    static let shared = AppSession() // Singleton to access the same instance across views
    
    private init() {} // Prevent external initialization
    
    var gameModes: [GameModeModel] = [
        GameModeModel(
            mode: .GettingStarted,
            title: "Getting Started",
            subtitle: "A fun and easy introduction to warm up the party! 🎉",
            dares: GettingStartedDares,
            icon: "🍺",
            requiresPremium: false
        ),
        GameModeModel(
            mode: .Crazy,
            title: "Crazy",
            subtitle: "Wild dares and bold truths for those who fear nothing! 🔥",
            dares: CrazyDares,
            icon: "🤪",
            requiresPremium: false
        ),
        GameModeModel(
            mode: .Roleplay,
            title: "Roleplay",
            subtitle: "Step into character and act out spicy scenarios! 🎭",
            dares: RoleplayDares,
            icon: "👮‍♂️",
            requiresPremium: true
        ),
        GameModeModel(
            mode: .Spicy,
            title: "Spicy",
            subtitle: "Flirty and seductive challenges to heat things up! ❤️‍🔥",
            dares: SpicyDares,
            icon: "🫦",
            requiresPremium: true
        ),
        GameModeModel(
            mode: .Blackout,
            title: "Blackout",
            subtitle: "Extreme dares and risky truths—only for the fearless! 🍻",
            dares: BlackoutDares,
            icon: "😵",
            requiresPremium: true
        )
    ]
    
    func addPlayer(player: String) {
        players.append(player)
    }
}

let GettingStartedDares: [String] = [
    "Give a compliment to the player across from you. If not, take 2 sips.",
    "Touch your nose with your tongue. If not, take 3 sips.",
    "Do 5 pushups (or situps). If not, take 4 sips.",
    "Imitate the person to your right for 15 seconds. If not, take 3 sips.",
    "Highfive everyone at the table. If not, take 2 sips.",
    "Give a piggyback ride to someone for 10 seconds. If not, take 4 sips.",
    "Do a silly dance for 20 seconds. If not, take 3 sips.",
    "Make direct eye contact with everyone at the table for 10 seconds without laughing. If you laugh, take 2 sips.",
    "Trade an item of clothing with someone. If not, take 3 sips.",
    "Tell a joke. If no one laughs, take 3 sips. If everyone laughs, everyone else drinks 1 sip.",
    "Say the alphabet backwards in 15 seconds. If you fail, take 4 sips.",
    "Name 3 different types of cheese. If you can't, take 3 sips.",
    "Recite a nursery rhyme. If you mess up, take 2 sips.",
    "Say 'red lorry, yellow lorry' 5 times fast. If you mess up, take 3 sips.",
    "Name all the players at the table in order. If you miss someone, take 2 sips.",
    "Tell a short story about your most embarrassing moment. If you refuse, take 4 sips.",
    "Sing a verse of your favorite song. If you forget the lyrics, take 3 sips.",
    "Say 5 different words that rhyme with 'cat'. If you can't, take 2 sips.",
    "Name all the planets in our solar system. If you miss one, take 3 sips.",
    "Say a tongue twister chosen by the person to your left, 3 times correctly. If not, take 3 sips.",
    "Everyone name a different country, going clockwise, until someone repeats or fails. That person drinks 3 sips.",
    "Everyone name a different type of fruit, going counterclockwise, until someone repeats or fails. That person drinks 3 sips.",
    "Everyone name a different animal that starts with the letter 'A', going clockwise, until someone repeats or fails. That person drinks 3 sips.",
    "Everyone name a different movie, going counterclockwise, until someone repeats or fails. That person drinks 3 sips.",
    "Everyone name a different color, going clockwise, until someone repeats or fails. That person drinks 3 sips.",
    "Everyone try to make animal noises, one after another without pausing for more than 3 seconds. The person that breaks the chain drinks 3 sips.",
    "Everyone try to count to 20, one number each, without pausing for more than 3 seconds. The person that breaks the chain drinks 3 sips.",
    "Everyone name a different type of car brand, going clockwise, until someone repeats or fails. That person drinks 3 sips.",
    "Everyone name a different famous person, going counterclockwise, until someone repeats or fails. That person drinks 3 sips.",
    "Everyone try to sing a song together, in unison, without laughing for 15 seconds. Anyone who laughs drinks 2 sips.",
    "Do 10 jumping jacks. If not, take 3 sips.",
    "Hold a plank for 30 seconds. If not, take 4 sips.",
    "Do a wall sit for 20 seconds. If not, take 3 sips.",
    "Touch your toes without bending your knees. If not, take 2 sips.",
    "Balance on one foot for 20 seconds. If not, take 3 sips.",
    "Do 5 burpees. If not, take 5 sips.",
    "Do a frog jump across the room. If not, take 4 sips.",
    "Spin around 5 times. If not, take 3 sips.",
    "Do the worm dance for 15 seconds. If not, take 3 sips.",
    "Try to lick your elbow. If not, take 2 sips.",
    "Give someone a shoulder ride for 20 seconds. If not drink 4 sips.",
    "Do 10 arm circles forward and then 10 backwards. If not drink 3 sips.",
    "Try to do a hand stand against a wall for 10 seconds. If not drink 4 sips.",
    "Pretend to be a cat, and walk around the room. If not drink 3 sips.",
    "Do 10 lunges. If not drink 3 sips.",
    "Act like a gorilla for 15 seconds. If not drink 3 sips.",
    "Try to juggle 3 objects. If not drink 4 sips.",
    "Do a headstand against the wall for 5 seconds. If not drink 5 sips.",
    "Hold your legs straight up in the air for 20 seconds. If not drink 3 sips.",
    "Try to do a cartwheel. If not drink 4 sips.",
    "Do 5 pushups with your hands in a diamond shape. If not drink 4 sips.",
    "Try to do a back roll. If not drink 3 sips.",
    "Walk like a crab across the room. If not drink 3 sips.",
    "Do ten high knees. If not drink 3 sips.",
    "Try to do the splits. If not drink 5 sips.",
    "Say a sentence in a different accent. If not, take 2 sips.",
    "Tell a funny story in a monotone voice. If not, take 3 sips.",
    "Recite a poem you know. If not, take 3 sips.",
    "Sing a song in opera style. If not, take 4 sips.",
    "Do an impression of a famous person. If not, take 3 sips.",
    "Tell a joke that makes everyone laugh. If no one laughs, take 4 sips.",
    "Describe your favorite movie in detail. If not, take 3 sips.",
    "Say 5 words that start with the letter 'Z'. If not, take 2 sips.",
    "Name 10 different types of dogs. If not, take 3 sips.",
    "Recite the preamble of the constitution. If not, take 5 sips.",
    "Say 3 facts about a random country. If not drink 3 sips.",
    "Try to say a full sentence in pig latin. If not drink 4 sips.",
    "Name all of the US presidents in chronological order. If not drink 5 sips.",
    "Recite a famous Shakespearean quote. If not drink 3 sips.",
    "Tell a scary story. If not drink 4 sips.",
    "Try to speak a different language for 30 seconds. If not drink 3 sips.",
    "Name 10 different types of cars. If not drink 3 sips.",
    "Try to rap a song. If not drink 4 sips.",
    "Name 10 different types of beers. If not drink 3 sips.",
    "Try to speak like a robot. If not drink 3 sips.",
    "Name 5 different types of cocktails. If not drink 2 sips.",
    "Try to do a radio DJ voice. If not drink 3 sips.",
    "Name 5 different types of trees. If not drink 2 sips.",
    "Try to make up a song on the spot. If not drink 4 sips.",
    "Name 10 different types of birds. If not drink 3 sips.",
    "Everyone name a different type of drink. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different city in Europe. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of sport. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of musical instrument. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different element from the periodic table. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone try to hum a famous song, one after another, without pausing. The person that breaks the chain drinks 3 sips.",
    "Everyone name a different type of candy. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of clothing. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of fish. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone try to make animal sounds in alphabetical order. The person that breaks the chain drinks 3 sips.",
    "Everyone name a different social media platform. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of videogame genre. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different superhero. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of spice. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone try to count backwards from 30. The person that messes up drinks 3 sips.",
    "Everyone name a different type of school subject. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of tool. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of weather. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of dessert. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone try to say a nursery rhyme in unison. Anyone who messes up, drinks 2 sips.",
    "Everyone name a different type of building. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different historical figure. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of gemstone. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone name a different type of fabric. If someone repeats or fails, that person drinks 3 sips.",
    "Everyone try to name a different song from the 80's. Anyone who fails, drinks 3 sips.",
    "Give the person to your right a compliment that is a little bit weird. If not, drink 2 sips.",
    "Make the person across from you laugh without touching them. If not, drink 3 sips.",
    "Trade shoes with the person to your left. If not, drink 2 sips.",
    "Ask the person to your right for a back massage for 1 minute. If they refuse, you drink 3 sips.",
    "Tell the person across from you a secret. If not, drink 4 sips.",
    "Try to make the person to your left blush. If not, drink 3 sips.",
    "Give a sincere apology to someone for a past event. If not, drink 2 sips.",
    "Imitate a famous cartoon character for 30 seconds. If not, take 3 sips.",
    "Try to fold a piece of paper in half 6 times. If you can’t, take 2 sips.",
    "Sing the 'Happy Birthday' song in a minor key. If not, take 3 sips.",
    "Give a dramatic reading of a recipe. If not, take 4 sips.",
    "Try to say 'unique New York' 5 times fast. If you mess up, take 3 sips.",
    "Tell a story about an imaginary pet. If not, take 2 sips.",
    "Try to do a freestyle rap about the person to your left. If not, take 4 sips.",
    "Make a paper airplane and fly it across the room. If it doesn’t fly, take 3 sips.",
    "Try to make a balloon animal. If you fail, take 3 sips.",
    "Tell a joke in a different language. If not, take 2 sips.",
    "Try to do a coin trick. If you fail, drink 3 sips.",
    "Describe your favorite food like a wine connoisseur. If not drink 3 sips.",
    "Try to make a shadow puppet. If you fail, drink 2 sips.",
    "Name 5 different types of pasta shapes. If not drink 3 sips.",
    "Try to write your name with your nondominant hand. If not drink 3 sips.",
    "Make a silly hat out of newspaper. If not drink 2 sips.",
    "Try to juggle three items that are not balls. If not drink 4 sips.",
    "Name 5 different types of flowers. If not drink 3 sips.",
    "Try to do a silly voice for the next 3 rounds. If you forget, drink 2 sips.",
    "Describe a dream you had in detail. If not drink 3 sips.",
    "Try to do a card trick. If you fail, drink 4 sips.",
    "Name 5 different types of cheeses. If not drink 2 sips.",
    "Try to make a paper crane. If you fail, drink 3 sips.",
    "Describe your favorite childhood toy. If not drink 3 sips.",
    "Try to do a handstand against the wall. If you fail, drink 4 sips.",
    "Name 5 different types of trees. If not drink 2 sips.",
    "Try to do a magic trick with a coin. If you fail, drink 3 sips.",
    "Describe your favorite vacation. If not drink 3 sips.",
    "Try to do a silly walk across the room. If not drink 2 sips.",
    "Name 5 different types of birds. If not drink 3 sips.",
    "Try to do a silly dance with a broom. If not drink 4 sips.",
    "Describe your favorite movie scene. If not drink 3 sips.",
    "Try to do a magic trick with a deck of cards. If you fail, drink 4 sips.",
    "Name 5 different types of fish. If not drink 2 sips.",
    "Try to do a silly song with a kazoo. If not drink 3 sips.",
    "Describe your favorite song. If not drink 3 sips.",
    "Try to do a silly impression of a celebrity. If not drink 4 sips.",
    "Name 5 different types of cars. If not drink 2 sips.",
    "Try to do a silly poem about the person to your right. If not drink 3 sips.",
    "Describe your favorite book. If not drink 3 sips.",
    "Try to do a silly story using only animal sounds. If not drink 4 sips.",
    "Name 5 different types of fruits. If not drink 2 sips.",
    "Try to do a silly commercial for a random object. If not drink 3 sips.",
    "Describe your favorite video game. If not drink 3 sips.",
    "Try to do a silly news report about a made up event. If not drink 4 sips.",
    "Name 5 different types of vegetables. If not drink 2 sips.",
    "Try to do a silly play with the person to your left. If not drink 3 sips.",
    "Describe your favorite restaurant. If not drink 3 sips.",
    "Try to do a silly sport commentary. If not drink 4 sips.",
    "Name 5 different types of drinks. If not drink 2 sips.",
    "Try to do a silly cooking show demonstration. If not drink 3 sips.",
    "Describe your favorite holiday. If not drink 3 sips.",
    "Try to do a silly weather forecast. If not drink 4 sips.",
    "Name 5 different types of desserts. If not drink 2 sips.",
    "Try to do a silly fashion show walk. If not drink 3 sips.",
    "Describe your favorite art piece. If not drink 3 sips.",
    "Try to do a silly science experiment demonstration. If not drink 4 sips.",
    "Name 5 different types of countries. If not drink 2 sips.",
    "Try to do a silly historical reenactment. If not drink 3 sips.",
    "Describe your favorite board game. If not drink 3 sips.",
    "Try to make a tower out of household items in 1 minute. If it falls, drink 3 sips.",
    "Describe the taste of water to someone who has never had it. If not, drink 2 sips.",
    "Try to do a handstand against the wall for 10 seconds. If you fail, drink 4 sips.",
    "Name 5 different types of gemstones. If not, drink 2 sips.",
    "Try to do a silly impression of a historical figure. If not, drink 3 sips.",
    "Describe your ideal vacation. If not, drink 3 sips.",
    "Try to do a magic trick with a scarf. If you fail, drink 4 sips.",
    "Name 5 different types of fabrics. If not, drink 2 sips.",
    "Try to do a silly dance with a hat. If not, drink 3 sips.",
    "Describe your favorite childhood memory. If not, drink 3 sips.",
    "Try to do a silly impression of a famous musician. If not, drink 4 sips.",
    "Name 5 different types of musical instruments. If not, drink 2 sips.",
    "Try to do a silly song with a spoon. If not, drink 3 sips.",
    "Describe your favorite animal. If not, drink 3 sips.",
    "Try to do a silly commercial for a random food item. If not, drink 4 sips.",
    "Name 5 different types of spices. If not, drink 2 sips.",
    "Try to do a silly play with a stuffed animal. If not, drink 3 sips.",
    "Describe your favorite season. If not, drink 3 sips.",
    "Try to do a silly news report about a madeup sports event. If not, drink 4 sips.",
    "Name 5 different types of sports. If not, drink 2 sips.",
    "Try to do a silly cooking show demonstration with a vegetable. If not, drink 3 sips.",
    "Describe your favorite board game character. If not, drink 3 sips.",
    "Try to do a silly weather forecast for a fictional planet. If not, drink 4 sips.",
    "Name 5 different types of candies. If not, drink 2 sips.",
    "Try to do a silly fashion show walk with a blanket. If not, drink 3 sips.",
    "Describe your favorite art piece's backstory. If not, drink 3 sips.",
    "Try to do a silly science experiment demonstration with household objects. If not, drink 4 sips.",
    "Name 5 different types of cities. If not, drink 2 sips.",
    "Try to do a silly historical reenactment with a modern twist. If not, drink 3 sips.",
    "Describe your favorite fictional character's personality. If not, drink 3 sips.",
    "Try to make a sculpture out of food. If it is unrecognizable, drink 3 sips.",
    "Give a dramatic reading of a phone book page. If not, drink 2 sips.",
    "Try to do a headstand for 5 seconds. If you fail, drink 4 sips.",
    "Name 5 different types of planets. If not, drink 2 sips.",
    "Try to do a silly impression of a famous scientist. If not, drink 3 sips.",
    "Describe a time you were embarrassed. If not, drink 3 sips.",
    "Try to do a magic trick with a rubber band. If you fail, drink 4 sips.",
    "Name 5 different types of materials. If not, drink 2 sips.",
    "Try to do a silly dance with a pillow. If not, drink 3 sips.",
    "Describe your favorite childhood cartoon. If not, drink 3 sips.",
    
    "Try to build a house of cards. If it collapses, drink 3 sips.",
    "Describe your favorite smell in detail. If not, drink 2 sips.",
    "Try to do a yoga pose. If you fail, drink 4 sips.",
    "Name 5 different types of insects. If not, drink 2 sips.",
    "Try to do a silly impression of a famous athlete. If not, drink 3 sips.",
    "Describe your favorite type of weather. If not, drink 3 sips.",
    "Try to do a magic trick with a napkin. If you fail, drink 4 sips.",
    "Name 5 different types of tools. If not, drink 2 sips.",
    "Try to do a silly dance with a scarf. If not, drink 3 sips.",
    "Describe your favorite type of music. If not, drink 3 sips.",
    "Try to do a silly impression of a famous author. If not, drink 4 sips.",
    "Name 5 different types of beverages. If not, drink 2 sips.",
    "Try to do a silly song with a comb. If not, drink 3 sips.",
    "Describe your favorite type of art. If not, drink 3 sips.",
    "Try to do a silly commercial for a random appliance. If not, drink 4 sips.",
    "Name 5 different types of electronics. If not, drink 2 sips.",
    "Try to do a silly play with a flashlight. If not, drink 3 sips.",
    "Describe your favorite type of game. If not, drink 3 sips.",
    "Try to do a silly news report about a madeup animal. If not, drink 4 sips.",
    "Name 5 different types of buildings. If not, drink 2 sips.",
    "Try to do a silly cooking show demonstration with a spice. If not, drink 3 sips.",
    "Describe your favorite type of transportation. If not, drink 3 sips.",
    "Try to do a silly weather forecast for a fictional location. If not, drink 4 sips.",
    "Name 5 different types of candies. If not, drink 2 sips.",
    "Try to do a silly fashion show walk with a towel. If not, drink 3 sips.",
    "Describe your favorite type of plant. If not, drink 3 sips.",
    "Try to do a silly science experiment demonstration with kitchen ingredients. If not, drink 4 sips.",
    "Name 5 different types of continents. If not, drink 2 sips.",
    "Try to do a silly historical reenactment with a modern song. If not, drink 3 sips.",
    "Describe your favorite type of story. If not, drink 3 sips.",
    "Try to make a sculpture out of paper clips. If it is unrecognizable, drink 3 sips.",
    "Give a dramatic reading of a shampoo bottle. If not, drink 2 sips.",
    "Try to do a headstand for 8 seconds. If you fail, drink 4 sips.",
    "Name 5 different types of galaxies. If not, drink 2 sips.",
    "Try to do a silly impression of a famous philosopher. If not, drink 3 sips.",
    "Describe a time you were surprised. If not, drink 3 sips.",
    "Try to do a magic trick with a piece of string. If you fail, drink 4 sips.",
    "Name 5 different types of minerals. If not, drink 2 sips.",
    "Try to do a silly dance with a blanket. If not, drink 3 sips.",
    "Describe your favorite type of dance. If not, drink 3 sips.",
    "Try to do a silly impression of a famous painter. If not, drink 4 sips.",
    "Name 5 different types of desserts. If not, drink 2 sips.",
    "Try to do a silly song with a spoon and fork. If not, drink 3 sips.",
    "Describe your favorite type of flower. If not, drink 3 sips.",
    "Try to do a silly commercial for a random household item. If not, drink 4 sips.",
    "Name 5 different types of fabrics. If not, drink 2 sips.",
    "Try to do a silly play with a pillow. If not, drink 3 sips.",
    "Describe your favorite type of book genre. If not, drink 3 sips.",
    "Try to do a silly news report about a madeup festival. If not, drink 4 sips.",
    "Name 5 different types of sports equipment. If not, drink 2 sips.",
    "Try to build a pyramid out of cups. If it collapses, drink 3 sips.",
    "Describe your biggest fear. If not, drink 2 sips.",
    "Try to do a yoga pose with a friend. If you fail, drink 4 sips.",
    "Name 5 different types of reptiles. If not, drink 2 sips.",
    "Try to do a silly impression of a famous chef. If not, drink 3 sips.",
    "Describe your dream house. If not, drink 3 sips.",
    "Try to do a magic trick with a pen. If you fail, drink 4 sips.",
    "Name 5 different types of metals. If not, drink 2 sips.",
    "Try to do a silly dance with a hat and a cane (or umbrella). If not, drink 3 sips.",
    "Describe your favorite holiday tradition. If not, drink 3 sips.",
    "Try to do a silly impression of a famous politician. If not, drink 4 sips.",
    "Name 5 different types of grains. If not, drink 2 sips.",
    "Try to do a silly song with a bottle. If not, drink 3 sips.",
    "Describe your favorite work of art. If not, drink 3 sips.",
    "Try to do a silly commercial for a random cleaning product. If not, drink 4 sips.",
    "Name 5 different types of board games. If not, drink 2 sips.",
    "Try to do a silly play with a book. If not, drink 3 sips.",
    "Describe your favorite video game character. If not, drink 3 sips.",
    "Try to do a silly news report about a madeup weather phenomenon. If not, drink 4 sips.",
    "Name 5 different types of vehicles. If not, drink 2 sips.",
    "Try to do a silly cooking show demonstration with a fruit. If not, drink 3 sips.",
    "Describe your favorite historical event. If not, drink 3 sips.",
    "Try to do a silly weather forecast for a fictional planet. If not, drink 4 sips.",
    "Name 5 different types of desserts. If not, drink 2 sips.",
    "Try to do a silly fashion show walk with a scarf. If not, drink 3 sips.",
    "Describe your favorite type of architecture. If not, drink 3 sips.",
    "Try to do a silly science experiment demonstration with kitchen items. If not, drink 4 sips.",
    "Name 5 different types of oceans. If not, drink 2 sips.",
    "Try to do a silly historical reenactment with a modern song. If not, drink 3 sips.",
    "Describe your favorite fairy tale. If not, drink 3 sips.",
    "Try to make a sculpture out of straws. If it is unrecognizable, drink 3 sips.",
    "Give a dramatic reading of a restaurant menu. If not, drink 2 sips.",
    "Try to do a headstand for 12 seconds. If you fail, drink 4 sips.",
    "Name 5 different types of constellations. If not, drink 2 sips.",
    "Try to do a silly impression of a famous inventor. If not, drink 3 sips.",
    "Describe a time you were proud of yourself. If not, drink 3 sips.",
    "Try to do a magic trick with a spoon. If you fail, drink 4 sips.",
    "Name 5 different types of gemstones. If not, drink 2 sips.",
    "Try to do a silly dance with a balloon. If not, drink 3 sips.",
    "Describe your favorite type of poetry. If not, drink 3 sips.",
    "Try to do a silly impression of a famous dancer. If not, drink 4 sips.",
    "Name 5 different types of drinks. If not, drink 2 sips.",
    "Try to do a silly song with a comb and paper. If not, drink 3 sips.",
    "Describe your favorite type of mythology. If not, drink 3 sips.",
    "Try to do a silly commercial for a random office supply. If not, drink 4 sips.",
    "Name 5 different types of coding languages. If not, drink 2 sips.",
    "Try to do a silly play with a hat. If not, drink 3 sips.",
    "Describe your favorite type of animal. If not, drink 3 sips.",
    "Try to do a silly news report about a madeup scientific discovery. If not, drink 4 sips.",
    "Name 5 different types of snacks. If not, drink 2 sips.",
    "Try to build a bridge out of playing cards. If it collapses, drink 3 sips.",
    "Describe your most vivid memory. If not, drink 2 sips.",
    "Try to do a balancing yoga pose. If you fail, drink 4 sips.",
    "Name 5 different types of amphibians. If not, drink 2 sips.",
    "Try to do a silly impression of a famous comedian. If not, drink 3 sips.",
    "Describe your ideal day. If not, drink 3 sips.",
    "Try to do a magic trick with a rubber band and a paper clip. If you fail, drink 4 sips.",
    "Name 5 different types of alloys. If not, drink 2 sips.",
    "Try to do a silly dance with a pair of socks as puppets. If not, drink 3 sips.",
    "Describe your favorite childhood game. If not, drink 3 sips.",
    "Try to do a silly impression of a famous character from a book. If not, drink 4 sips.",
    "Name 5 different types of legumes. If not, drink 2 sips.",
    "Try to do a silly song with a spoon and a cup. If not, drink 3 sips.",
    "Describe your favorite piece of classical music. If not, drink 3 sips.",
    "Try to do a silly commercial for a random toy. If not, drink 4 sips.",
    "Name 5 different types of video game genres. If not, drink 2 sips.",
    "Try to do a silly play with a scarf and a hat. If not, drink 3 sips.",
    "Describe your favorite type of mythology creature. If not, drink 3 sips.",
    "Try to do a silly news report about a madeup space event. If not, drink 4 sips.",
    "Name 5 different types of currencies. If not, drink 2 sips.",
    "Try to do a silly cooking show demonstration with a random spice and herb combination. If not, drink 3 sips.",
    "Describe your favorite type of folklore. If not, drink 3 sips.",
    "Try to do a silly weather forecast for a fictional underwater city. If not, drink 4 sips.",
    "Name 5 different types of nuts. If not, drink 2 sips.",
    "Try to do a silly fashion show walk with a kitchen towel as a cape. If not, drink 3 sips.",
]

let CrazyDares: [String] = [
    "Chug your drink in 10 seconds.",
    
    "Pick someone and dare them to do something wild. If they refuse, they drink 3 sips.",
    
    "Dance for 1 minute. If you stop, take 4 sips.",
    
    "Imitate someone in the group for 1 minute. If they guess who you’re imitating, you drink 2 sips. If not, they drink 3.",
    
    "Do 10 pushups or take 5 sips.",
    
    "Pick someone to have a staring contest with. Loser takes 3 sips.",
    
    "Give a compliment to everyone in the group. If you forget someone, take 3 sips.",
    
    "Speak in an accent for the next 2 rounds. If you forget, take 4 sips.",
    
    "Do your best dance move for 30 seconds. If no one laughs, take 2 sips.",
    
    "Pick someone to chug their drink. If they refuse, you drink 4 sips.",
    
    "Choose a number between 1 and 10. If someone guesses it right, you drink 3 sips. If not, they drink 2 sips.",
    
    "Call a friend outside the group and tell them a crazy secret. If you don’t, drink 5 sips.",
    
    "Everyone must do a silly walk across the room. If yours isn’t the silliest, take 2 sips.",
    
    "Give a 30second speech on why you love your drink. If you mess up, drink 3 sips.",
    
    "Draw something on your phone or a piece of paper with your eyes closed. If it’s recognizable, you drink 2 sips. If not, drink 4.",
    
    "Act like a waiter and take everyone’s drink order. If you miss anyone, take 3 sips.",
    
    "Chug half of your drink or take 6 sips.",
    
    "Speak only in song lyrics for the next 3 rounds. If you mess up, take 4 sips.",
    
    "Let someone else dare you to do something. If you refuse, drink 5 sips.",
    
    "Send a silly selfie to someone in the group’s phone contacts. If you don’t, take 3 sips.",
    
    "Chug your drink while hopping on one foot. If you stop hopping, take 4 sips.",
    
    "Speak in rhymes for the next 2 rounds. If you break the rhyme, take 3 sips.",
    
    "Let someone write something on your forehead with a marker. If you stop them, take 5 sips.",
    
    "Take a shot of something strong (or chug your drink). If you refuse, take 6 sips.",
    
    "Try to do a handstand for 10 seconds. If you fall, take 4 sips.",
    
    "Pick a word and say it in every sentence for the next 5 minutes. If you forget, take 3 sips.",
    
    "Do an impression of an animal for 1 minute. If no one guesses it, take 4 sips.",
    
    "Chug 3/4 of your drink right now.",
    
    "Give a dramatic reading of a random text message on your phone. If it’s not dramatic enough, drink 3 sips.",
    
    "Choose someone to pick an embarrassing story for you to tell. If you don’t, take 5 sips.",
    
    "Let someone else pick your next drink or take 4 sips.",
    
    "Do 10 jumping jacks. If you stop early, take 2 sips.",
    
    "Take a 'selfie' in the most ridiculous pose. If no one laughs, drink 3 sips.",
    
    "Say 'I love you' to everyone in the group in the most awkward way. If it’s not awkward enough, drink 3 sips.",
    
    "Pick a song, and everyone has to sing along. If anyone doesn’t sing, they take 2 sips.",
    
    "Walk around the room like a zombie for 1 minute. If you break character, take 3 sips.",
    
    "Do your best impression of a celebrity for 1 minute. If no one guesses it, take 4 sips.",
    
    "Chug the rest of your drink now.",
    
    "Tell the craziest lie you can think of. If anyone believes it, you take 3 sips.",
    
    "Imitate a popular TV character for 1 minute. If no one knows who it is, take 4 sips.",
    
    "Try to touch your toes without bending your knees. If you can’t, take 4 sips.",
    
    "Send a random emojionly text to your most recent contact. If they respond with confusion, take 3 sips.",
    
    "Do your best cartwheel. If you fail, take 5 sips.",
    
    "Call a random person in your contacts and tell them you’re moving to a different country. If they don’t believe you, drink 3 sips.",
    
    "Chug a small glass of water or take 5 sips from your drink.",
    
    "Pretend to be a waiter and take everyone's drink orders. If you forget someone, take 3 sips.",
    
    "Do an impression of a famous movie scene. If no one guesses it, take 4 sips.",
    
    "Pick someone to sing their favorite song. If they refuse, take 4 sips.",
    
    "Balance something on your head (cup, bottle, whatever). If it falls, take 3 sips.",
    
    "Do a dramatic reading of a text from your phone. If it’s not dramatic enough, take 2 sips.",
    
    "Pretend to be a cat for the next 2 minutes (meowing, crawling around). If you break character, take 3 sips.",
    
    "Give someone a piggyback ride around the room. If you can’t, take 5 sips.",
    
    "Pretend to be a waiter and take an imaginary order from everyone in the room. If you mess up, take 3 sips.",
    
    "Speak in a different language for 3 minutes. If you mess up, take 4 sips.",
    
    "Chug a drink while spinning in circles. If you stop spinning, take 5 sips.",
    
    "Pick a number between 1 and 20. If someone guesses it correctly, you drink 3 sips. If no one does, they drink 2 sips.",
    
    "Pretend you’re on a cooking show and explain how to make a ridiculous dish. If it’s not entertaining, take 3 sips.",
    
    "Act like a celebrity and walk down an imaginary red carpet. If you don’t act like a star, drink 3 sips.",
    
    "Take a ridiculous selfie and post it on your social media. If you don’t, take 4 sips.",
    
    "Chug 3 sips, then immediately spin around 5 times. If you fall, drink 5 sips.",
    
    "Do your best impression of a chicken for 1 minute. If it’s not good enough, drink 3 sips.",
    
    "Take a spoonful of something spicy or sour. If you don’t, take 5 sips.",
    
    "Let someone else do your next dare. If you refuse, drink 4 sips.",
    
    "Run around the room like a superhero for 1 minute. If you stop early, take 4 sips.",
    
    "Do 20 pushups. If you can’t, take 5 sips.",
    
    "Take a selfie with the weirdest expression. If no one laughs, take 3 sips.",
    
    "Dance for 2 minutes to a random song. If you stop, drink 5 sips.",
    
    "Imitate an animal of someone’s choice for 1 minute. If you fail, take 4 sips.",
    
    "Call your mom or friend and tell them a random fact about yourself. If they don’t respond with confusion, take 3 sips.",
    
    "Chug 1/4 of your drink or take 4 sips.",
    
    "Create a ridiculous outfit out of random items and wear it for the next round. If you don’t, drink 3 sips.",
    
    "Give someone in the group a piggyback ride for 30 seconds. If you fail, take 5 sips.",
    
    "Talk in a funny accent for the next 5 minutes. If you forget, take 3 sips.",
    
    "Send a message to your crush with only emojis. If they respond with a question, drink 3 sips.",
    
    "Imitate your favorite movie character for 1 minute. If no one guesses it, drink 4 sips.",
    
    "Run to the door and knock like you're a salesperson. If it’s not convincing, drink 3 sips.",
    
    "Chug 1/2 of your drink.",
    
    "Do a dramatic reading of a random text from your phone. If it’s not dramatic enough, take 3 sips.",
    
    "Create a rap about your drink. If it's not creative, take 3 sips.",
    
    "Do a cartwheel. If you can’t, take 5 sips.",
    
    "Pick a person to give you a dare. If you refuse, take 4 sips.",
    
    "Act like a waiter and ask everyone for their drink orders. If you forget someone’s order, take 3 sips.",
    
    "Take a silly selfie and make it your profile picture for 1 hour. If you refuse, take 5 sips.",
    
    "Do your best yoga pose for 1 minute. If you fall over, take 4 sips.",
    
    "Call your friend and leave them a voicemail with the weirdest thing you can think of. If you don’t, take 3 sips.",
    
    "Do 30 jumping jacks. If you stop early, take 3 sips.",
    
    "Try to do the splits. If you fail, take 5 sips.",
    
    "Chug 3 sips and then try to touch your toes. If you can’t, drink 4 more sips.",
    "Speak only in questions for the next 5 minutes. If you forget, take 4 sips.",
    "Pick someone and do a funny dance in front of them. If they don't laugh, drink 3 sips.",
    "Pretend you’re a news anchor and give a fake news story for 1 minute. If it’s not believable, take 3 sips.",
    "Do a 30second impression of a cartoon character. If no one guesses it, take 4 sips.",
    "Let someone else give you a dare of their choosing. If you refuse, take 5 sips.",
    "Tell a super embarrassing story about yourself. If you refuse, take 4 sips.",
    "Chug your entire drink.",
    "Imitate a famous celebrity for 1 minute. If no one guesses who it is, take 5 sips.",
    "Give someone in the group a back massage for 2 minutes. If you don’t, take 3 sips.",
    "Do your best moonwalk for 30 seconds. If you fail, take 4 sips.",
    "Pretend to be a waiter and serve everyone a drink (using imaginary cups). If it’s not convincing, take 3 sips.",
    "Make an animal noise every time someone talks for the next 5 minutes. If you forget, take 4 sips.",
    "Try to juggle 3 items. If you drop them, take 5 sips.",
    "Take a drink and do a 1minute plank. If you fall, take 3 sips.",
    "Send a message to your best friend with only a single word. If they don’t respond, drink 4 sips.",
    "Pretend to be your favorite movie villain for 1 minute. If you break character, take 3 sips.",
    "Do 20 situps. If you fail, drink 5 sips.",
    "Imitate a famous singer and perform a song for 1 minute. If it’s not good enough, take 4 sips.",
    "Pick someone to dare you. If you refuse, take 5 sips.",
    "Act like you're a famous chef and explain how to make a ridiculous recipe. If it’s not funny, take 3 sips.",
    "Chug the rest of your drink.",
    "Chug 2 sips, then do 10 jumping jacks. If you stop, take 3 extra sips.",
    "Do a dramatic monologue from any movie. If no one is impressed, drink 3 sips.",
    "Dance like a robot for 1 minute. If you stop early, take 4 sips.",
    "Chug your drink in 5 seconds.",
    "Call a random person and sing them a song. If they hang up, drink 5 sips.",
    "Pretend to be a waiter and take everyone’s drink orders using an accent. If you mess up, take 3 sips.",
    "Talk in slow motion for the next 3 minutes. If you forget, drink 4 sips.",
    "Pick someone and do a dramatic reading of their last text message. If it's not dramatic enough, take 3 sips.",
    "Do your best animal noise for 1 minute. If no one guesses it, take 4 sips.",
    "Give a speech on why you're the best dancer in the group. If no one believes you, take 5 sips.",
    "Walk like a penguin for 2 minutes. If you break character, take 4 sips.",
    "Chug 3 sips and then spin in circles for 30 seconds. If you fall, take 5 sips.",
    "Act like you’re a professional wrestler for 1 minute. If it’s not convincing, take 3 sips.",
    "Imitate an animal of someone’s choice for 1 minute. If it’s not good enough, take 5 sips.",
    "Send a voice memo singing \"Happy Birthday\" to someone you know. If they don’t respond, take 4 sips.",
    "Pretend to be a DJ for 1 minute. If you don’t make it hype, take 3 sips.",
    "Talk in song lyrics for 2 minutes. If you break character, drink 4 sips.",
    "Do a funny dance and try to make everyone laugh. If no one laughs, take 4 sips.",
    "Try to do a handstand for 10 seconds. If you can’t, drink 5 sips.",
    "Chug a small glass of water. If you refuse, take 4 sips.",
    "Pick someone and do their best dance move. If it’s not good enough, take 4 sips.",
    "Imitate someone from the group for 1 minute. If no one guesses who it is, take 3 sips.",
    "Take a random object and make up a commercial for it. If it’s not entertaining, take 4 sips.",
    "Pretend to be a news anchor and report fake news for 1 minute. If it’s not believable, take 3 sips.",
    "Call a friend and tell them you’re moving to a different country. If they don’t respond with confusion, take 5 sips.",
    "Chug 1/4 of your drink or take 4 sips.",
    "Take a random item and give it a personality. If it’s not funny, take 3 sips.",
    "Make an animal sound every time someone speaks for the next 5 minutes. If you forget, take 4 sips.",
    "Do 30 squats. If you stop early, take 4 sips.",
    "Send a random emojionly text to your sibling. If they don’t reply with confusion, take 5 sips.",
    "Try to juggle 2 or more things for 1 minute. If you fail, drink 5 sips.",
    "Pretend you’re a famous chef and explain how to cook something ridiculous. If it’s not funny, drink 4 sips.",
    "Do your best celebrity impression for 1 minute. If no one guesses it, take 5 sips.",
    "Chug your drink while hopping on one foot. If you stop hopping, take 5 sips.",
    "Create a song about the drink you're holding. If it's not catchy, take 3 sips.",
    "Do 20 situps. If you fail, drink 5 sips.",
    "Do your best impression of a cartoon character. If no one guesses it, take 4 sips.",
    "Take a funny selfie and make it your profile picture for 1 hour. If you don’t, take 4 sips.",
    "Pretend you’re a standup comedian and tell a joke. If it’s not funny, take 3 sips.",
    "Walk around the room like a crab for 2 minutes. If you break character, drink 4 sips.",
    "Pick a random person to mimic their voice for the next 2 minutes. If they don’t guess it, take 4 sips.",
    "Create a ridiculous handshake with someone in the group. If it’s not creative, drink 3 sips.",
    "Send a text to a family member using only emojis. If they respond with confusion, take 4 sips.",
    "Do a cartwheel. If you fail, drink 4 sips.",
    "Pretend to be a TV commercial for a product you invent. If it’s not entertaining, take 5 sips.",
    "Chug your drink or take 4 sips.",
    "Give a dramatic performance of a random song. If it’s not dramatic enough, take 4 sips.",
    "Imitate your favorite singer and perform a song for 1 minute. If you fail, take 4 sips.",
    "Pretend you're a famous movie director and give someone a scene to act out. If it’s not good, take 3 sips.",
    "Do a 30second plank. If you fall, take 4 sips.",
    "Chug 2 sips, then immediately do 20 jumping jacks. If you stop early, take 3 extra sips.",
    "Send a voice note singing “I Will Survive.” If you don’t, take 5 sips.",
    "Imitate a robot for 1 minute. If you stop, take 3 sips.",
    "Act like a famous movie villain for 1 minute. If it’s not convincing, take 4 sips.",
    "Pretend you’re a famous chef and explain how to cook a ridiculous dish. If it’s not funny, take 5 sips.",
    "Chug half your drink.",
    "Call someone and tell them you’re adopting a pet dinosaur. If they don’t believe you, take 4 sips.",
    "Do a dramatic reading of a random text on your phone. If it’s not dramatic enough, take 3 sips.",
    "Speak in a silly accent for the next 5 minutes. If you forget, drink 4 sips.",
    "Balance something on your head for 1 minute. If it falls, take 3 sips.",
    "Do 10 pushups. If you can’t, drink 5 sips.",
    "Send a random emojionly text to your best friend. If they don’t respond, drink 4 sips.",
    "Pretend to be a dog for 1 minute. If you break character, drink 5 sips.",
    "Chug 3 sips and then do 10 situps. If you fail, take 4 sips.",
    "Act like a news reporter and give a dramatic news report about an imaginary event. If it’s not believable, take 3 sips.",
    "Pick someone and imitate their voice for 1 minute. If they don’t guess it, drink 4 sips.",
    "Do 30 seconds of a ridiculous dance move. If you stop early, take 5 sips.",
    "Create an imaginary commercial for a random product. If it’s not convincing, drink 4 sips.",
    "Pretend to be a monkey for 1 minute. If you stop, take 5 sips.",
    "Chug a small glass of water. If you refuse, drink 4 sips.",
    "Talk in rhymes for 2 minutes. If you forget, take 4 sips.",
    "Take a selfie doing your best silly face. If no one laughs, drink 3 sips.",
    "Pick someone and do their best dance move. If it’s not good enough, drink 4 sips.",
    "Do your best impression of a popular celebrity. If no one guesses who it is, take 4 sips.",
    "Try to touch your toes while hopping on one foot. If you can’t, drink 5 sips.",
    "Chug your drink or take 6 sips.",
    "Send a ridiculous text to a random contact in your phone. If they don’t respond with confusion, take 4 sips.",
    "Do a 1minute dramatic performance of a random song. If it’s not dramatic enough, take 4 sips.",
    "Pretend you’re on a cooking show and explain how to make a bizarre dish. If it’s not entertaining, drink 3 sips.",
    "Do your best cartwheel. If you fail, drink 4 sips.",
    "Dance like no one is watching for 2 minutes. If you stop early, take 5 sips.",
    "Act like a waiter and take everyone's drink order with a French accent. If you mess up, drink 4 sips.",
    "Do your best impression of a famous TV character for 1 minute. If no one guesses who it is, take 5 sips.",
    "Make animal noises every time someone speaks for the next 5 minutes. If you forget, drink 4 sips.",
    "Chug 1/4 of your drink or take 4 sips.",
    "Pretend you’re a professional wrestler and give a promo. If it’s not convincing, drink 5 sips.",
    "Act like a famous sports commentator and narrate a random action in the room. If it’s not good enough, take 3 sips.",
    "Imitate your favorite singer for 1 minute. If it’s not close enough, take 5 sips.",
    "Send a meme to someone you haven’t texted in a while. If they respond with confusion, take 3 sips.",
    "Do 20 squats. If you can’t, drink 5 sips.",
    "Pretend to be a tourist and give a 2minute “tour” of the room. If it’s not entertaining, take 4 sips.",
    "Call a friend and tell them you’ve just become famous. If they don’t believe you, take 4 sips.",
    "Do your best impression of a famous movie scene for 1 minute. If no one guesses it, take 5 sips.",
    "Create a handshake with someone in the group. If it’s not creative enough, take 4 sips.",
    "Pick someone and do their best impersonation. If they don’t guess who it is, drink 3 sips.",
    "Pretend to be a superhero for 1 minute. If it’s not convincing, take 4 sips.",
    "Do your best cheerleader chant. If no one is impressed, drink 3 sips.",
    "Give a 1minute speech about the benefits of your drink. If it’s not convincing, drink 4 sips.",
    "Chug your entire drink right now.",
    "Act like a famous person for 1 minute. If no one guesses who it is, take 5 sips."
]

let RoleplayDares: [String] = [
    "You’re a seductive bartender, and I’m a VIP customer. Flirt with me while making a drink. If you don’t put on a convincing show, take 4 sips.",
    
    "You’re a mysterious stranger at a masquerade ball, and you just caught my eye. Walk over to me and whisper a secret. If your performance isn’t sultry enough, take 3 sips.",
    
    "You’re a passionate artist, and I’m your muse. Give me a compliment that would make me want to pose for your painting. If it’s not convincing, take 3 sips.",
    
    "I’m a famous movie star, and you’re the director. Tell me how we’re going to perform our “love scene” for the movie. If it’s not hot enough, take 4 sips.",
    
    "You’re a charming waiter, and I’m a highmaintenance customer. Convince me to order the most expensive drink. If you don’t persuade me, take 3 sips.",
    
    "You’re a secret agent, and I’m the person who knows the info you need. Seduce me into giving you the intel. If you can’t get me to spill the beans, take 5 sips.",
    
    "I’m a famous musician, and you’re my biggest fan. Serenade me with your best song. If you can’t make me swoon, take 4 sips.",
    
    "You’re a mysterious traveler in an exotic land, and I’m your local guide. Show me you’re not afraid to get a little lost in the moment. If you don’t impress me, take 3 sips.",
    
    "We’re two strangers in a waiting room, and the chemistry is undeniable. Kiss me on the cheek to start the conversation. If you can’t make it happen, take 4 sips.",
    
    "You’re a charming prince/princess, and I’m your love interest. Give me a passionate kiss or gesture to win my heart. If you hesitate, take 5 sips.",
    
    "You’re a seductive pirate, and I’m your captured prisoner. Whisper in my ear about what I’m in for while you tie me to the mast. If you don’t make it steamy enough, take 4 sips.",
    
    "I’m a powerful CEO, and you’re my charming assistant. Give me a massage while making me feel special. If you don’t turn up the heat, take 3 sips.",
    
    "You’re a famous fashion designer, and I’m your model. Tell me how you want me to pose for your latest show. If you’re not convincing, take 3 sips.",
    
    "You’re a famous actor, and I’m your love interest in a movie. Perform our “passionate kiss” scene. If it’s not romantic enough, take 4 sips.",
    
    "You’re an enchanted prince/princess, and I’m your rescued maiden. Give me a royal kiss to show your affection. If it’s not sincere, take 5 sips.",
    
    "You’re a seductive genie, and I’m your master. Grant me a wish, but you have to seduce me to get your freedom. If you don’t convince me, take 4 sips.",
    
    "You’re a hot circus performer, and I’m a rich patron. Perform a seductive routine for me. If you don’t make me want to stay, take 3 sips.",
    
    "You’re a sexy secret agent, and I’m a rival who’s trying to escape. Kiss me to distract me and get the intel. If I escape, take 5 sips.",
    
    "You’re a hot librarian, and I’m a bookworm who just needs a little attention. Flirt with me as you help me find a book. If you don’t make it spicy, take 3 sips.",
    
    "You’re a passionate chef, and I’m your guest. Feed me something delicious and whisper how much you want me to taste it. If you don’t make it tantalizing, take 4 sips.",
    
    "You’re a seductive bartender, and I’m a regular who’s been coming in for weeks. What do you do to finally get me to notice you?If you don’t make it irresistible, take 4 sips.",
    
    "You’re a charming detective, and I’m your suspect. Flirt with me while trying to get information. If you fail to seduce me into confessing, take 5 sips.",
    
    "You’re a mysterious stranger at a library, and I’m your cute librarian. You’ve come to check out books but end up checking me out instead. If you don’t get me to go along, take 4 sips.",
    
    "You’re a famous photographer, and I’m your model. Tell me how you want me to pose for a steamy shoot. If you’re not persuasive enough, take 3 sips.",
    
    "You’re a dashing spy, and I’m your contact. Seduce me into giving you the secret code. If I don’t give you the code, take 5 sips.",
    
    "I’m a celebrity, and you’re my personal assistant. You’re tasked with helping me get ready for an event, but you also want a little more... If you can’t turn it into a flirt fest, take 4 sips.",
    
    "You’re a charming photographer, and I’m your muse. Pose me in a suggestive way that makes me feel your attention. If you don’t make it alluring, take 3 sips.",
    
    "You’re a passionate singer, and I’m your admirer. Serenade me with a sultry love song. If you don’t make me swoon, take 4 sips.",
    
    "You’re a mysterious pirate, and I’m your captive. Flirt with me as you “decide my fate.”If you don’t keep me captivated, take 5 sips.",
    
    "You’re a suave millionaire, and I’m your date for the evening. Take me on a lavish tour of your mansion, but add in some cheeky compliments. If I’m not impressed, take 4 sips.",
    
    "You’re a famous chef, and I’m your guest. Prepare a dish for me while giving me steamy eye contact and tempting remarks. If it’s not seductive enough, take 3 sips.",
    
    "You’re a flirtatious magician, and I’m your audience. Perform a “magical” trick while using it as an excuse to get closer. If you don’t wow me, take 4 sips.",
    
    "You’re a seductive masseuse, and I’m your client. Start the massage and work your way into a playful flirtation. If you don’t make it hot, take 5 sips.",
    
    "You’re a rogue thief, and I’m the unsuspecting victim. Flirt with me as you “steal” something from me. If you don’t make it convincing, take 4 sips.",
    
    "You’re a charming race car driver, and I’m your pit crew. Flirt with me while you prep for your big race. If you don’t win me over, take 3 sips.",
    
    "You’re a wealthy art collector, and I’m the artist you’ve been eyeing for a new piece. Persuade me to work for you in a more personal way. If I’m not intrigued, take 4 sips.",
    
    "You’re a rock star, and I’m your groupie. Perform a mini concert just for me while giving me a lot of attention. If you don’t make it seductive, take 5 sips.",
    
    "You’re a handsome pilot, and I’m your copilot. Flirt with me as we prepare for takeoff. If you can’t fly me high, take 3 sips.",
    
    "You’re a suave but dangerous criminal, and I’m your innocent victim. Flirt with me as you plan your escape. If you don’t seduce me, take 4 sips.",
    
    "You’re a charming neighbor, and I’m the new person in the building. Invite me over for a “friendly” drink and add in some flirtation. If I don’t accept, take 3 sips.",
    
    "You’re a famous movie director, and I’m the actor auditioning for your latest film. Make the audition a bit more personal with some flirtatious direction. If I don’t fall for it, take 4 sips.",
    
    "You’re a sexy alien, and I’m the human you’ve come to seduce for your experiment. Charm me with your outofthisworld ways. If you don’t succeed, take 5 sips.",
    
    "You’re a confident yoga instructor, and I’m your student. Get me into a seductive pose while giving me some sultry encouragement. If you don’t make it work, take 4 sips.",
    
    "You’re a famous dancer, and I’m your partner. Seduce me with a dance that’s as fiery as your moves. If you don’t get me to join in, take 5 sips.",
    
    "You’re a professional swimmer, and I’m your competitor. Flirt with me while trying to distract me during the race. If you can’t distract me, take 3 sips.",
    
    "You’re an exotic bartender, and I’m a tourist. Serve me a drink while giving me an irresistible smile. If I don’t respond, take 4 sips.",
    
    "You’re a personal trainer, and I’m your client. Get me to “work hard” in the gym while sneaking in some flirtation. If I’m not interested, take 4 sips.",
    
    "You’re a seductive pirate captain, and I’m your first mate. Flirt with me while giving orders on the ship. If you don’t captivate me, take 5 sips.",
    
    "You’re a billionaire CEO, and I’m your intern. Seduce me into doing your bidding by giving me a little extra attention. If you can’t make it enticing, take 3 sips.",
    
    "You’re a famous photographer, and I’m your model. Take a sultry photo of me while making suggestive comments. If you can’t get the shot, take 4 sips.",
    
    "You’re a professional wrestler, and I’m your opponent. Flirt with me before our match to throw me off my game. If it doesn’t work, take 4 sips.",
    
    "You’re an explorer, and I’m the archaeologist who knows the secrets you need. Flirt with me to get the information. If I don’t share the treasure with you, take 5 sips.",
    
    "You’re a seductive knight, and I’m your damsel in distress. Rescue me and win my heart in the process. If you fail to impress me, take 4 sips.",
    
    "You’re a seductive author, and I’m your reader. Read a spicy passage from your book to me and make it sound even hotter. If you don’t get me interested, take 3 sips.",
    
    "You’re a famous chef, and I’m your date. Cook me a private dinner and flirt with me while you serve each course. If it’s not spicy enough, take 5 sips.",
    
    "You’re a charming magician, and I’m your assistant. Perform a sexy magic trick and make it flirty. If the trick isn’t enticing, take 4 sips.",
    
    "You’re a hot personal shopper, and I’m your client. Help me pick out something sexy while complimenting me along the way. If you don’t get me to buy it, take 3 sips.",
    
    "You’re a suave artist, and I’m your model. Paint a sultry portrait of me while describing your every move. If I’m not flattered, take 4 sips.",
    
    "You’re a provocative personal trainer, and I’m your workout partner. Teach me a “new move” and get close. If I’m not interested, take 3 sips.",
    
    "You’re a charming but mysterious doctor, and I’m your patient. Give me a very “personal” checkup. If it’s not convincing, take 5 sips.",
    
    "You’re a flirty race car driver, and I’m your pit crew. Flirt with me while you get your car ready. If you can’t rev my engine, take 3 sips.",
    
    "You’re a secret agent, and I’m your target. Get me to spill my secrets by using your charm. If I stay silent, take 5 sips.",
    
    "You’re a steamy lounge singer, and I’m your audience. Serenade me with your sultry voice. If you don’t make me melt, take 4 sips.",
    
    "You’re a seductive knight in shining armor, and I’m your quest partner. Whisper to me as we travel through dangerous lands. If I don’t fall for it, take 5 sips.",
    
    "You’re a mysterious stranger in a bar, and I’m the bartender. Seduce me while I serve you your drink. If I don’t respond, take 4 sips.",
    
    "You’re a flirty beach volleyball player, and I’m your opponent. Distract me during the game with flirtatious comments. If I don’t get distracted, take 3 sips.",
    
    "You’re a confident and suave private investigator, and I’m your client. Get me to trust you with personal details while making it a little more intimate. If you don’t make me open up, take 4 sips.",
    
    "You’re a mysterious yoga instructor, and I’m your student. Lead me through a seductive stretch that leaves me wanting more. If it’s not steamy enough, take 3 sips.",
    
    "You’re a famous author, and I’m the person who’s been waiting for your new book. Persuade me that it’s worth reading—and more. If I’m not intrigued, take 4 sips.",
    
    "You’re a sultry masseuse, and I’m your client. Give me a very personal massage while whispering some tantalizing remarks. If you don’t make me swoon, take 5 sips.",
    
    "You’re a sexy cowboy, and I’m the saloon owner. Sweettalk me into giving you a private table. If you don’t win me over, take 4 sips.",
    
    "You’re a famous pop star, and I’m your biggest fan. Sing me a sultry love song to get me to fall for you. If you don’t make me swoon, take 4 sips.",
    
    "You’re a charming mafia boss, and I’m your new recruit. Make me fall for you as you give me my first assignment. If you can’t do it, take 5 sips.",
    
    "You’re a mysterious sorcerer, and I’m your apprentice. Show me the “dark” side of magic while giving me a flirty glance. If I don’t fall under your spell, take 4 sips.",
    
    "You’re a famous actor, and I’m your costar. Perform a passionate scene with me on set. If you don’t heat things up, take 5 sips.",
    
    "You’re an alluring scientist, and I’m your research assistant. Tempt me with your forbidden experiments. If I don’t bite, take 4 sips.",
    
    "You’re a suave bodyguard, and I’m your rich client. Seduce me as you protect me from an imagined danger. If I’m not convinced, take 5 sips.",
    
    "You’re a flirtatious baker, and I’m the customer who just walked in. Persuade me to try something new while making me smile. If I’m not intrigued, take 3 sips.",
    
    "You’re a seductive cat burglar, and I’m the unsuspecting victim. Flirt with me as you steal my precious belongings. If I catch you, take 5 sips.",
    
    "You’re a charming pilot, and I’m your flight attendant. Flirt with me while you fly the plane. If you don’t make it fun, take 4 sips.",
    
    "You’re a sweet, seductive librarian, and I’m your bookobsessed client. Help me find the perfect novel, but make it personal. If I don’t get the hint, take 3 sips.",
    
    "You’re a famous art thief, and I’m the museum curator. Flirt with me while you “inspect” the art. If I catch you, take 5 sips.",
    
    "You’re a passionate archaeologist, and I’m your assistant. Make me swoon while you teach me about an ancient relic. If you don’t impress me, take 4 sips.",
    
    "You’re a seductive rock climber, and I’m your climbing partner. Flirt with me while we scale the wall together. If I don’t feel the chemistry, take 4 sips.",
    
    "You’re a charming lawyer, and I’m your client. Convince me to trust you while you work your legal magic. If I don’t feel convinced, take 3 sips.",
    
    "You’re an irresistible circus ringmaster, and I’m your star performer. Flirt with me before the big show starts. If I’m not charmed, take 4 sips.",
    
    "You’re a seductive knight, and I’m your prisoner. Convince me to join your side with your sweet words and gestures. If I stay loyal, take 5 sips.",
    
    "You’re a dashing adventurer, and I’m the treasure you seek. Persuade me to hand over the prize by showing me your charm. If I don’t fall for it, take 4 sips.",
    
    "You’re a talented violinist, and I’m your audience. Serenade me with a sultry song that leaves me breathless. If you can’t captivate me, take 4 sips.",
    
    "You’re a famous painter, and I’m your canvas. Make me feel like the work of art as you “paint” me with your compliments. If you don’t win me over, take 3 sips.",
    
    "You’re a sultry opera singer, and I’m your biggest fan. Sing me a love song while making direct eye contact. If I’m not moved, take 4 sips.",
    
    "You’re a steamy pool boy/girl, and I’m your client at a fancy resort. Flirt with me while you clean the pool. If I don’t fall for you, take 3 sips.",
    
    "You’re a dashing secret agent, and I’m your partner. Get me to reveal my secrets with your irresistible charm. If I stay quiet, take 5 sips.",
    
    "You’re a gorgeous flight attendant, and I’m your passenger. Flirt with me during the flight to get me more comfortable. If you can’t make me enjoy the flight, take 4 sips.",
    
    "You’re a sensual yoga instructor, and I’m your student. Lead me through a calming, yet seductive session. If I’m not relaxed, take 3 sips.",
    
    "You’re a charismatic gardener, and I’m your wealthy client. Flirt with me while tending to my garden. If I’m not into it, take 4 sips.",
    
    "You’re a charming poolside waiter, and I’m your VIP guest. Serve me a drink while making me feel special with your sweet words. If I don’t appreciate it, take 3 sips.",
    
    "You’re a dangerous spy, and I’m the informant. Make me give you the information you need while seducing me. If you don’t succeed, take 5 sips.",
    
    "You’re a seductive witch, and I’m the person you’ve put a spell on. Flirt with me while I try to break the curse. If I resist, take 4 sips.",
    
    "You’re a smooth car salesman, and I’m your customer. Convince me to buy the most expensive car with a little bit of flirtation. If I don’t bite, take 3 sips.",
    
    "You’re a talented hairstylist, and I’m your client. Flirt with me while you give me a makeover. If I don’t notice, take 4 sips.",
    
    "You’re a suave billionaire, and I’m your newest date. Take me out on a fancy dinner and charm me all the way. If I’m not impressed, take 5 sips.",
    
    "You’re a charismatic personal trainer, and I’m your client. Persuade me to push through a difficult workout while adding some flirtation. If I can’t feel the burn, take 3 sips.",
    
    "You’re a charming prince/princess, and I’m your subject. Make me fall in love with you during your royal duties. If you don’t convince me, take 4 sips.",
    
    "You’re a seductive vampire, and I’m your prey. Tempt me with your supernatural powers to come closer. If I run away, take 5 sips.",
    
    "You’re a famous celebrity chef, and I’m your guest. Cook me a special meal while giving me extra attention. If it’s not delicious enough, take 4 sips.",
    
    "You’re a sultry magician, and I’m your assistant. Perform a magic trick while making everything a little more mysterious. If I’m not intrigued, take 5 sips.",
    
    "You’re a charming artist, and I’m your muse. Draw me while you describe every seductive detail. If I’m not captivated, take 4 sips.",
    
    "You’re a famous fashion designer, and I’m your model. Make me feel like the most beautiful person alive during your fashion show. If I don’t feel special, take 3 sips.",
    
    "You’re a seductive pirate captain, and I’m your crew member. Flirt with me while we sail the seas. If I’m not intrigued, take 5 sips.",
    
    "You’re a dangerous assassin, and I’m your target. Seduce me to drop my guard before you make your move. If you fail, take 5 sips.",
    
    "You’re an alluring bartender, and I’m your only customer tonight. Serve me a drink with a side of sweet, flirty conversation. If I don’t notice, take 4 sips.",
    
    "You’re a charming bodyguard, and I’m your client. Flirt with me as you protect me from harm. If I’m not into it, take 3 sips.",
    
    "You’re a seductive treasure hunter, and I’m the lost artifact you’ve been searching for. Convince me to reveal myself to you. If I stay hidden, take 5 sips.",
    
    "You’re a famous race car driver, and I’m your biggest fan. Flirt with me after your win and make me want to celebrate with you. If I’m not impressed, take 4 sips.",
    
    "You’re a mysterious writer, and I’m your fan. Read me a steamy passage from your latest book while making it come alive. If I’m not hooked, take 3 sips.",
    
    "You’re a passionate violinist, and I’m your concert audience. Play me a seductive tune that makes my heart race. If you don’t impress me, take 4 sips.",
    
    "You’re a confident yoga instructor, and I’m your student. Get me to relax in a seductive position while guiding me with sweet words. If I’m not in the mood, take 3 sips.",
    
    "You’re a suave vampire, and I’m your willing victim. Seduce me with your supernatural charm and make me want to stay in your world forever. If you don’t turn me into your follower, take 5 sips.",
    
    "You’re a seductive chef, and I’m your guest. Cook me a special meal while seducing me with your irresistible kitchen skills. If I’m not hooked, take 4 sips.",
    
    "You’re a charming musician, and I’m your groupie. Play a sensual tune that makes me want to get closer. If you don’t make me swoon, take 4 sips.",
    
    "You’re a confident secret agent, and I’m your informant. Flirt with me to get the information you need while making it personal. If I stay silent, take 5 sips.",
    
    "You’re a mysterious author, and I’m your biggest fan. Read me an excerpt from your steamy novel while gazing into my eyes. If I don’t fall for it, take 4 sips.",
    
    "You’re a seductive pirate captain, and I’m your first mate. Flirt with me as you give me my orders on deck. If I’m not tempted, take 5 sips.",
    
    "You’re a charming astronaut, and I’m your fellow crew member. Flirt with me during our mission to the stars. If I don’t respond, take 4 sips.",
    
    "You’re a confident knight, and I’m your captured princess. Flirt with me as you try to convince me to escape with you. If I stay in the castle, take 5 sips.",
    
    "You’re a flirty archaeologist, and I’m the priceless artifact you’ve discovered. Get me to give up my secrets while making it tempting. If I resist, take 4 sips.",
    
    "You’re a tempting lifeguard, and I’m the beachgoer in need of rescue. Flirt with me while you “save” me from danger. If I’m not interested, take 3 sips.",
    
    "You’re a seductive masseuse, and I’m your client. Give me a sensual massage and whisper sweet things in my ear. If I don’t enjoy it, take 4 sips.",
    
    "You’re a captivating magician, and I’m your assistant. Perform a steamy trick that gets me to fall under your spell. If I’m not amazed, take 5 sips.",
    
    "You’re a mysterious mafia boss, and I’m your reluctant recruit. Charm me into following you by showing me your irresistible power. If I stay hesitant, take 4 sips.",
    
    "You’re a hot barista, and I’m the regular at your coffee shop. Flirt with me as you make my favorite drink. If I don’t feel the heat, take 3 sips.",
    
    "You’re a daring race car driver, and I’m your pit crew. Get me to help you win by distracting me with some flirtation. If I stay focused, take 4 sips.",
    
    "You’re a talented dancer, and I’m your partner. Lead me through a seductive dance that makes me feel like I’m the only one in the room. If I’m not impressed, take 4 sips.",
    
    "You’re a suave personal trainer, and I’m your client. Get me to follow your directions with some flirty encouragement. If I’m not motivated, take 3 sips.",
    
    "You’re a confident professor, and I’m your student. Flirt with me during your lecture, making me pay attention in the most unexpected ways. If I don’t blush, take 4 sips.",
    
    "You’re a smooth car salesman, and I’m your customer. Convince me to buy the luxury car while sweettalking me into the deal. If I don’t buy, take 3 sips.",
    
    "You’re a charming hotel concierge, and I’m your VIP guest. Flirt with me while making my stay unforgettable. If I don’t get interested, take 4 sips.",
    
    "You’re a confident bodyguard, and I’m the person you’ve been assigned to protect. Flirt with me while keeping me safe. If I don’t feel secure, take 3 sips.",
    
    "You’re a charming beach bartender, and I’m the vacationer enjoying my time in the sun. Serve me a drink while adding some playful compliments. If I don’t bite, take 4 sips.",
    
    "You’re a seductive witch, and I’m the mortal you’ve enchanted. Make me fall under your spell with your charms. If I break free, take 5 sips.",
    
    "You’re a sultry photographer, and I’m your model. Pose me in a way that leaves me wanting more. If I’m not intrigued, take 4 sips.",
    
    "You’re a hot yoga instructor, and I’m your student. Lead me through a seductive flow that’s both calming and flirtatious. If I’m not in the mood, take 3 sips.",
    
    "You’re a charming bartender, and I’m the person you’ve been eyeing all night. Serve me a drink while making me want to stay longer. If I leave, take 4 sips.",
    
    "You’re a mysterious werewolf, and I’m the human you’ve chosen to keep an eye on. Flirt with me while keeping your dangerous side hidden. If I’m not captivated, take 5 sips.",
    
    "You’re a famous athlete, and I’m your biggest fan. Get me to join you in a private celebration after your big win. If I stay shy, take 4 sips.",
    
    "You’re a flirtatious photographer, and I’m your subject. Take a series of sultry photos while making me feel like a star. If I’m not into it, take 3 sips.",
    
    "You’re a seductive detective, and I’m your suspect. Charm me into confessing my secrets while keeping the tension high. If I stay silent, take 5 sips.",
    
    "You’re a passionate artist, and I’m your muse. Paint me in a way that makes me feel both beautiful and desirable. If I’m not flattered, take 4 sips.",
    
    "You’re a charming jeweler, and I’m the customer. Show me your latest collection while making me feel special. If I’m not impressed, take 3 sips.",
    
    "You’re a daring spy, and I’m the informant you’ve been sent to retrieve information from. Flirt with me to get the details you need. If I stay tightlipped, take 5 sips.",
    
    "You’re a seductive nurse, and I’m your patient. Take care of me while adding a bit of flirtation to your treatment. If I’m not seduced, take 4 sips.",
    
    "You’re a mysterious magician, and I’m your assistant. Perform a sultry magic trick that makes me want to get closer. If I’m not amazed, take 4 sips.",
    
    "You’re a charming scientist, and I’m your lab assistant. Help me with an experiment while making things a little more exciting. If I don’t fall for you, take 3 sips.",
    
    "You’re a hot fashion designer, and I’m your model. Flirt with me as you help me get dressed in something sultry. If I’m not interested, take 4 sips.",
    
    "You’re a passionate magician, and I’m your volunteer. Perform a seductive trick that gets me to fall under your spell. If I resist, take 5 sips.",
    
    "You’re a mysterious artist, and I’m your model. Get me to pose in a way that’s both seductive and artistic. If I’m not impressed, take 4 sips.",
    
    "You’re a sexy bodyguard, and I’m your charge. Flirt with me while keeping me safe from harm. If I’m not swayed, take 3 sips.",
    
    "You’re a charming librarian, and I’m your library patron. Convince me to check out a book by making me feel irresistible. If I don’t check out a book, take 3 sips.",
    
    "You’re a sultry waitstaff, and I’m your customer. Serve me a drink and make sure the evening feels special. If I don’t take the drink, take 4 sips.",
    
    "You’re a flirty astronaut, and I’m your fellow crew member. Flirt with me in zero gravity to make things a little more exciting. If I stay focused on work, take 4 sips.",
    
    "You’re a confident tailor, and I’m your client. Help me pick out something sensual to wear while giving me flirty remarks. If I don’t like the outfit, take 3 sips.",
    
    "You’re a mysterious fortune teller, and I’m your client. Predict my future in a seductive way that makes me want to know more. If I’m not intrigued, take 4 sips.",
    
    "You’re a sultry singer, and I’m your fan. Sing me a song that makes me feel like I’m the only one in the room. If I’m not captivated, take 4 sips.",
    
    "You’re a seductive gym trainer, and I’m your client. Get me to work out while making it a playful experience. If I’m not sweating, take 3 sips.",
    
    "You’re a passionate chef, and I’m your date. Cook me a meal while turning up the heat with some flirty conversation. If I’m not tempted, take 4 sips.",
    
    "You’re a mysterious witch, and I’m the person you’ve cast a spell on. Seduce me to break the curse. If I resist, take 5 sips.",
    
    "You’re a seductive playboy/playgirl, and I’m your date. Charm me during dinner while leaving just enough to the imagination. If I’m not impressed, take 4 sips.",
    
    "You’re a sultry art thief, and I’m your unwitting target. Flirt with me while you “steal” my heart. If I catch you, take 5 sips.",
    
    "You’re a charming firefighter, and I’m the person you’ve just rescued. Flirt with me as you make sure I’m safe. If I don’t fall for you, take 4 sips.",
    
    "You’re a seductive detective, and I’m your witness. Persuade me to tell you the truth with some tempting words. If I stay silent, take 5 sips.",
    
    "You’re a handsome prince, and I’m your servant. Show me a glimpse of your charm while you make your royal request. If I resist, take 4 sips.",
    
    "You’re a confident stuntman, and I’m your audience. Flirt with me while you perform a dangerous trick. If I’m not impressed, take 4 sips.",
    
    "You’re a smooth bartender, and I’m your guest. Serve me a drink while you sweettalk me into staying longer. If I leave early, take 3 sips.",
    
    "You’re a seductive sorcerer, and I’m your apprentice. Tempt me into using dark magic with your flirty guidance. If I stay pure, take 5 sips.",
    
    "You’re a sultry personal trainer, and I’m your client. Get me to push through my workout while complimenting me. If I don’t feel motivated, take 3 sips.",
    
    "You’re a sexy gladiator, and I’m the captive princess. Convince me to join you as you fight for my freedom. If I stay in the palace, take 5 sips.",
    
    "You’re a daring magician, and I’m your assistant. Perform a trick that leaves me breathless with your charm. If I’m not amazed, take 4 sips.",
    
    "You’re a smooth pilot, and I’m your passenger. Flirt with me while you fly us to a tropical destination. If I don’t enjoy the flight, take 4 sips.",
    
    "You’re a mysterious private investigator, and I’m your client. Charm me into revealing my secrets while keeping it playful. If I stay guarded, take 5 sips.",
    
    "You’re a seductive photographer, and I’m your model. Take a series of sultry shots while making me feel irresistible. If I’m not flattered, take 4 sips.",
    
    "You’re a charming beach lifeguard, and I’m your beachgoer. Flirt with me while keeping an eye out for trouble. If I’m not interested, take 3 sips.",
    
    "You’re a suave artist, and I’m your muse. Draw me in a way that makes me feel both seductive and powerful. If I’m not captivated, take 4 sips.",
    
    "You’re a daring cowboy/cowgirl, and I’m your ranch partner. Flirt with me while we work together in the barn. If I don’t feel the chemistry, take 4 sips.",
    
    "You’re a seductive rock star, and I’m your biggest fan. Perform a sensual song for me while making me feel like the only one in the crowd. If I’m not starstruck, take 4 sips.",
    
    "You’re a smooth talking car mechanic, and I’m your customer. Flirt with me while you fix my car. If I don’t notice, take 3 sips.",
    
    "You’re a mysterious rogue, and I’m your captive. Flirt with me while you slowly untie me. If I escape, take 5 sips.",
    
    "You’re a charming professor, and I’m your star pupil. Flirt with me during office hours while you tutor me. If I don’t stay focused, take 4 sips.",
    
    "You’re a sultry DJ, and I’m your biggest fan. Get me to dance with you while you play some hot beats. If I don’t get up, take 4 sips.",
    
    "You’re a confident butler, and I’m your guest. Flirt with me while you attend to my every need. If I don’t get interested, take 3 sips.",
    
    "You’re a seductive nurse, and I’m your patient. Tempt me into taking the “right” treatment with your sweet words. If I stay healthy, take 4 sips.",
    
    "You’re a passionate scientist, and I’m your research assistant. Persuade me to join your secret experiment with your irresistible charm. If I don’t join, take 5 sips.",
    
    "You’re a suave billionaire, and I’m your new date. Take me out to an extravagant dinner and convince me to join you in your lavish lifestyle. If I’m not into it, take 5 sips.",
    
    "You’re a charming lifeguard, and I’m your beach visitor. Flirt with me while you check that I’m safe in the water. If I stay dry, take 3 sips.",
    
    "You’re a daring treasure hunter, and I’m your partner. Get me to help you find the treasure with some sweet persuasion. If I stay hesitant, take 4 sips.",
    
    "You’re a smooth pilot, and I’m your passenger. Take me on a wild ride as you flirt and make the flight unforgettable. If I’m not on cloud nine, take 4 sips.",
    
    "You’re a seductive circus ringmaster, and I’m your performer. Flirt with me during our performance while making me the center of attention. If I’m not impressed, take 4 sips.",
    
    "You’re a mysterious knight, and I’m your captured princess. Flirt with me to convince me to escape with you. If I stay in the castle, take 5 sips.",
    
    "You’re a confident photographer, and I’m your subject. Snap some seductive photos of me while making me feel like a star. If I’m not feeling confident, take 4 sips.",
    
    "You’re a flirty masseuse, and I’m your client. Give me a sensual massage while whispering sweet compliments. If I’m not relaxed, take 4 sips.",
    
    "You’re a smooth talker, and I’m your secret crush. Flirt with me while making sure I’m completely enchanted by you. If I don’t fall for it, take 3 sips.",
    
    "You’re a seductive wizard, and I’m your apprentice. Cast a spell that leaves me enchanted and wanting more. If I break the spell, take 5 sips.",
    
    "You’re a charming secret agent, and I’m your informant. Get me to reveal all the secrets with your flirty interrogation. If I stay silent, take 5 sips.",
    
    "You’re a seductive gladiator, and I’m your opponent in the arena. Convince me to join forces while battling it out. If I resist, take 5 sips.",
    
    "You’re a sultry poet, and I’m your muse. Recite an original poem that makes me fall in love with your words. If I’m not swept away, take 4 sips.",
    
    "You’re a confident dancer, and I’m your partner. Sweep me off my feet while we dance together. If I stay seated, take 3 sips.",
    
    "You’re a sexy lifeguard, and I’m your beach guest. Flirt with me while ensuring I’m safe in the water. If I don’t swim closer, take 3 sips.",
    
    "You’re a sultry rock star, and I’m your biggest fan. Get me to join you backstage with your charm. If I stay in the crowd, take 4 sips.",
    
    "You’re a charming archaeologist, and I’m your assistant. Convince me to join your adventurous dig with some irresistible persuasion. If I resist, take 4 sips.",
    
    "You’re a seductive assassin, and I’m your target. Flirt with me to keep me off guard while you “eliminate” me. If I escape, take 5 sips.",
    
    "You’re a confident pirate, and I’m the treasure you’ve been seeking. Get me to hand myself over with your irresistible charm. If I hide, take 5 sips.",
    
    "You’re a mysterious magician, and I’m your assistant. Perform a trick that’s both mysterious and steamy. If I’m not amazed, take 4 sips.",
    
    "You’re a flirty bodyguard, and I’m your celebrity charge. Keep me safe while making me feel like the star of the show. If I stay calm, take 3 sips.",
    
    "You’re a daring stunt performer, and I’m your partner. Get me to join you in a risky stunt while looking incredibly hot. If I stay cautious, take 4 sips.",
    
    "You’re a sultry tennis coach, and I’m your student. Teach me how to play while adding a little playful flirtation. If I don’t get the hint, take 3 sips.",
    
    "You’re a seductive spy, and I’m your contact. Get me to spill the secrets with a touch of charm and a lot of allure. If I stay quiet, take 5 sips.",
    
    "You’re a charming con artist, and I’m your mark. Flirt with me while you pull off your latest heist. If I don’t fall for it, take 4 sips.",
    
    "You’re a smooth talker, and I’m your date. Charm me during a cozy dinner, making me feel like the only one that matters."
]

let SpicyDares: [String] = [
    "Give your partner a slow, lingering kiss on the lips and pull away only when you're both breathless. If you don't, take 4 sips.",
    
    "Run your fingers through your partner’s hair and slowly trace your lips down their neck for 10 seconds. If you don’t, take 5 sips.",
    
    "Look your partner in the eyes and slowly run your fingers across their lips, then kiss them softly. If you don’t, take 4 sips.",
    
    "Tease your partner by slowly removing one item of clothing. If you don’t, take 5 sips.",
    
    "Stand close to your partner and softly kiss their neck while saying something playful and flirty. If you don’t, take 4 sips.",
    
    "Pretend you’re an irresistible celebrity and give your partner a flirty autograph (or kiss) in a dramatic, playful way. If you don’t, take 3 sips.",
    
    "Run your hands slowly down your partner’s back, keeping the touch light and teasing, but don’t kiss them yet. If you don’t, take 4 sips.",
    
    "Run your fingers down your partner's arm, slowly and gently, then whisper something flirty in their ear. If you don’t, take 4 sips.",
    
    "Give your partner a surprise kiss on the cheek, then quickly move to their neck for a softer, lingering kiss. If you don’t, take 3 sips.",
    
    "Pretend you're both in a heated argument, but you can't resist the attraction and give your partner a passionate kiss to end it. If you don’t, take 4 sips.",
    
    "Tease your partner by standing close, but don’t kiss them. Let them try to make the first move. If you don’t, take 4 sips.",
    
    "Give your partner a deep kiss on the lips for 10 seconds, then pull back and tell them what you like most about them in a sultry tone. If you don’t, take 5 sips.",
    
    "Sit close to your partner and slowly run your fingers across their lips while maintaining eye contact. If you don’t, take 4 sips.",
    
    "Whisper a naughty but fun line to your partner and watch their reaction. If you don’t, take 4 sips.",
    
    "Pretend you’re both in a movie, and give your partner a passionate kiss as if it's the final scene. If you don’t, take 5 sips.",
    
    "Take your partner’s hand, look them in the eyes, and gently pull them closer, making it clear you want them, but don’t kiss yet. If you don’t, take 4 sips.",
    
    "Slowly trace a path with your lips along your partner's arm or neck, lingering in places that make them shiver. If you don’t, take 5 sips.",
    
    "Give your partner a compliment about how they make you feel, but do it in a teasing, flirty way. If you don’t, take 4 sips.",
    
    "Let your partner lead you in a dance, getting closer with each step, and make the most of the moment. If you don’t, take 4 sips.",
    
    "Hold your partner's face gently in your hands and give them a kiss that gets more intense with every second. If you don’t, take 5 sips.",
    
    "Let your partner trace their fingers along your body for 30 seconds while you just focus on their touch. If you don’t, take 4 sips.",
    
    "Look your partner in the eyes and tell them exactly what you want them to do to you next, in a seductive and playful tone. If you don’t, take 5 sips.",
    
    "Whisper something sultry to your partner, then kiss them in a way that leaves them craving more. If you don’t, take 4 sips.",
    
    "Pretend you're the “bad boy/girl” and give your partner a playful, intense kiss that catches them by surprise. If you don’t, take 5 sips.",
    
    "Kiss your partner deeply for 20 seconds, but during the kiss, lightly tease them by pulling away and then kissing again. If you don’t, take 4 sips.",
    
    "Pretend you're both on a spontaneous, romantic trip and kiss your partner like it's the first time you’re meeting them. If you don’t, take 5 sips.",
    
    "Tease your partner by whispering something you’d like to do with them later, but don’t go into too much detail—just enough to make them curious. If you don’t, take 4 sips.",
    
    "Stand close to your partner and look deeply into their eyes, then kiss them lightly and slowly build the intensity. If you don’t, take 4 sips.",
    
    "Pretend to be in a dramatic love scene, where you’re just about to kiss your partner passionately, but the tension builds up for 10 seconds before you do it. If you, don’t, take 5 sips.",
    
    "Touch your partner anywhere they want, if you don’t chug",
    
    "Make your partner a sensual massage, if you don’t take 2 sips",
    
    "Remove one item of clothing of your partner, if they refuse they drink 3 sips",
    
    "Sit close to your partner and slowly run your fingers across their sensual spot while maintaining eye contact. The one who refuses takes 3 sips",
    
    "Sensual kiss on the partner’s abdomen. If you refuse take 2 sips",
    
    "Give a taste of your drink to your partner from your mouth. If they refuse they must drink 3 sips of your drink.",
    
    "Tell your partner what you love about them, if not take 2 sips",
    
    "Wild card, offer a chug anytime for your partner",
    
    "Chug your partner’s drink",
    
    "Take 2 sips from your partner’s drink. If not take 3 from yours",
    
    "What’s your body count? If you don’t respond take 3 sips",
    
    "Tell your partner your little fetish, if you don’t take 2 sips",
    
    "What’s the sexiest body part of your partner. If you don’t say take 2 sips"
]

let BlackoutDares: [String] = [
    "Chug a drink while standing on one leg. If you spill, take 7 sips.",
    "Post a funny, embarrassing video of yourself on your social media. If not, take 8 sips.",
    "Call a random contact in your phone and sing 'Happy Birthday' to them. If not, take 7 sips.",
    "Do your best dance routine for 30 seconds. If not, take 6 sips.",
    "Let someone else pick a tattoo design for you and draw it on your body. If you refuse, take 7 sips.",
    "Try to lick your elbow. If you fail, take 5 sips.",
    "Find the nearest hat and wear it for the rest of the game. If not, take 6 sips.",
    "Speak in an accent of your choice for the next 3 rounds. If not, take 6 sips.",
    "Act like a monkey for the next 3 minutes. If you stop, take 6 sips.",
    "Walk like a runway model around the room. If you stumble, take 7 sips.",
    "Take a shot of hot sauce. If you refuse, take 7 sips.",
    "Have someone else choose an embarrassing name for you, and you must use it for the next 5 minutes. If not, take 6 sips.",
    "Let someone else send a message to your last text conversation. If not, take 8 sips.",
    "Speak only in questions for the next 5 minutes. If not, take 7 sips.",
    "Let someone else choose your outfit for the next hour. If you refuse, take 7 sips.",
    "Do your best impression of a zombie for 1 minute. If not, take 6 sips.",
    "Pretend you're a news anchor and deliver a 30-second news report about something ridiculous. If not, take 6 sips.",
    "Pretend to be a cat and meow every time you speak for the next 10 minutes. If not, take 6 sips.",
    "Pretend to be a waiter/waitress and take everyone's orders. If not, take 6 sips.",
    "Get down on all fours and crawl around the room. If you don’t, take 6 sips.",
    "Take a shot while standing on one foot. If you spill, take 8 sips.",
    "Talk in rhymes for the next 3 rounds. If not, take 7 sips.",
    "Let someone else give you a silly nickname that you must use for the rest of the game. If not, take 6 sips.",
    "Let the person to your left draw something on your face. If not, take 7 sips.",
    "Take a picture of yourself making the most ridiculous face possible and send it to your group chat. If not, take 7 sips.",
    "Do 10 squats while holding your drink in one hand. If you spill, take 8 sips.",
    "Call your mom and tell her you love her. If not, take 6 sips.",
    "Pretend to be a robot for the next 2 minutes. If not, take 6 sips.",
    "Try to touch your toes with your elbows for 1 minute. If you fail, take 6 sips.",
    "Post a status update that says ‘I’m the life of the party!’ If not, take 7 sips.",
    "Let someone else choose a crazy hairstyle for you. If you refuse, take 7 sips.",
    "Do your best impression of a chicken. If not, take 6 sips.",
    "Put on socks and slide across the floor like you're skating. If not, take 7 sips.",
    "Walk around the room with a pillow on your head. If you drop it, take 6 sips.",
    "Make a snow angel on the floor, no matter where you are. If not, take 7 sips.",
    "Chug a drink. If you refuse, take 5 sips.",
    "Call a random contact and sing 'Happy Birthday' to them. If not, take 4 sips.",
    "Do a dramatic reading of your last text conversation. If not, take 4 sips.",
    "Speak in movie quotes for the next 3 rounds. If not, take 4 sips.",
    "Imitate a famous animal (e.g., lion, dog, elephant) for 1 minute. If not, take 5 sips.",
    "Challenge someone to a staring contest. The loser takes 4 sips.",
    "Balance a spoon on your nose for 1 minute. If you fail, take 5 sips.",
    "Do 10 jumping jacks while singing your favorite song. If you stop, take 4 sips.",
    "Create a rap on the spot about the people in the room. If you refuse, take 5 sips.",
    "Send a voice message to your best friend singing a random song. If not, take 5 sips.",
    "Pretend to be a waiter and serve everyone at the table a drink. If not, take 4 sips.",
    "Create and perform a 30-second commercial for a random product. If not, take 5 sips.",
    "Find the nearest piece of clothing and wear it as a hat. If not, take 4 sips.",
    "Get a random person in the room to draw something on your face. If not, take 5 sips.",
    "Imitate a famous dance move for 30 seconds. If not, take 4 sips.",
    "Pretend to be a magician and perform a 'magic trick.' If not, take 5 sips.",
    "Let someone else choose a song for you to sing. If not, take 4 sips.",
    "Create a human pyramid with the group. If it falls, take 5 sips.",
    "Give someone a foot massage. If not, take 4 sips.",
    "Take a picture of yourself doing a silly pose and post it on your story. If not, take 5 sips.",
    "Imitate your best friend or the person to your left for 30 seconds. If not, take 4 sips.",
    "Talk in rhyme for the next 3 minutes. If not, take 5 sips.",
    "Do your best impression of a baby for 1 minute. If not, take 4 sips.",
    "Pretend to be a statue for 2 minutes. If you move, take 5 sips.",
    "Put on a blindfold and guess who is sitting across from you. If you fail, take 4 sips.",
    "Start a chant and get everyone to join in. If no one joins, take 4 sips.",
    "Act out your favorite TV show character for 1 minute. If not, take 5 sips.",
    "Call a friend and ask them to say something random. Repeat it 3 times in a row. If not, take 4 sips.",
    "Send an embarrassing voice message to your crush or ex. If not, take 5 sips.",
    "Take a shot of hot sauce or lemon juice. If you refuse, take 5 sips.",
    "Do a dramatic slow-motion walk for 30 seconds. If you stop, take 5 sips.",
    "Let the person to your right choose an embarrassing item of clothing for you to wear for the next 10 minutes. If not, take 5 sips.",
    "Run around the room like you’re in a race. If not, take 4 sips.",
    "Tell the group the most embarrassing thing you've ever done in public. If not, take 5 sips.",
    "Act like you're underwater for the next 2 minutes. If you stop, take 4 sips.",
    "Walk like a penguin for 1 minute. If not, take 4 sips.",
    "Make an awkward noise every time you speak for the next 5 minutes. If not, take 5 sips.",
    "Imitate the person to your right for the next 2 rounds. If you fail, take 4 sips.",
    "Find a random item in the room and use it as a prop for your 1-minute performance. If not, take 5 sips.",
    "Give a dramatic monologue like you’re in a Shakespeare play. If not, take 5 sips.",
    "Chug a drink of your choice. If you refuse, take 5 sips.",
    "Do 20 sit-ups. If you fail, take 4 sips.",
    "Text a random emoji to your mom. If you don’t, take 5 sips.",
    "Try to juggle 3 objects. If you fail, take 4 sips.",
    "Talk in a pirate accent for the next 5 minutes. If not, take 5 sips.",
    "Let someone else write something on your face with a marker. If not, take 5 sips.",
    "Create and perform a 30-second rap about someone in the group. If not, take 5 sips.",
    "Do your best impression of a celebrity of your choice for 1 minute. If not, take 5 sips.",
    "Take a shot of whatever drink is closest to you. If you refuse, take 5 sips.",
    "Tell the group your most embarrassing childhood story. If not, take 5 sips.",
    "Act like you're a superhero for 1 minute. If not, take 5 sips.",
    "Give a dramatic reading of your favorite meme. If not, take 5 sips.",
    "Call someone and tell them you're having the time of your life. If not, take 4 sips.",
    "Pretend to be a mannequin for 1 minute. If you move, take 5 sips.",
    "Make a silly face and hold it for 30 seconds. If you break, take 4 sips.",
    "Dance with no music for 1 minute. If you stop, take 5 sips.",
    "Do 10 pushups with your drink in hand. If you spill, take 5 sips.",
    "Send a voice memo of you singing 'Twinkle Twinkle Little Star.' If not, take 4 sips.",
    "Swap shoes with someone at the table. If not, take 4 sips.",
    "Pretend to be a professional wrestler and challenge someone to a match. If not, take 5 sips.",
    "Chug a drink while spinning around 5 times. If you spill, take 5 sips.",
    "Walk around the room like a runway model for 1 minute. If you stop, take 4 sips.",
    "Take a picture with someone while pulling a funny face and post it to your story. If not, take 5 sips.",
    "Put your socks on your hands and try to clap. If not, take 4 sips.",
    "Pretend you're a robot for the next 2 rounds. If not, take 5 sips.",
    "Do an impression of your least favorite celebrity for 1 minute. If not, take 5 sips.",
    "Post a picture of yourself wearing something ridiculous. If not, take 5 sips.",
    "Try to touch your nose with your tongue. If you fail, take 4 sips.",
    "Do your best impression of a chicken for 1 minute. If not, take 4 sips.",
    "Talk in a different accent for the next 5 minutes. If not, take 5 sips.",
    "Do a handstand for 10 seconds. If you can’t, take 5 sips.",
    "Find something in the room to use as a hat and wear it for the rest of the game. If not, take 5 sips.",
    "Do 10 squats in a row. If you can’t, take 4 sips.",
    "Post a silly video of yourself dancing to the group chat. If not, take 5 sips.",
    "Give someone a compliment in the most awkward way possible. If you can’t, take 4 sips.",
    "Try to name 5 different types of pasta. If you fail, take 4 sips.",
    "Start a slow-motion dance and get others to join in. If no one joins, take 5 sips.",
    "Pretend you're a famous actor giving an Oscar acceptance speech. If not, take 5 sips.",
    "Make a silly face for the next 2 minutes. If you break, take 5 sips.",
    "Pretend you're in a music video for 1 minute. If you stop, take 5 sips.",
    "Act out a scene from your favorite movie. If not, take 4 sips.",
    "Do your best impression of a baby crying for 1 minute. If not, take 4 sips.",
    "Chug a drink of your choice. If you refuse, take 5 sips.",
    "Do your best impersonation of a celebrity for 1 minute. If not, take 5 sips.",
    "Send a random emoji to your last conversation. If not, take 4 sips.",
    "Post a silly selfie to your story. If not, take 5 sips.",
    "Talk like a robot for the next 3 rounds. If not, take 5 sips.",
    "Do 20 jumping jacks in a row. If not, take 5 sips.",
    "Dance like nobody's watching for 1 minute. If not, take 4 sips.",
    "Give someone else a piggyback ride for 10 seconds. If not, take 5 sips.",
    "Do 10 sit-ups while holding a drink in each hand. If you spill, take 5 sips.",
    "Walk around the room like a crab for 1 minute. If you stop, take 4 sips.",
    "Let someone give you a silly hairstyle. If not, take 5 sips.",
    "Do your best chicken dance for 1 minute. If not, take 4 sips.",
    "Try to do a cartwheel. If not, take 5 sips.",
    "Act like you're in a horror movie for the next 2 minutes. If not, take 5 sips.",
    "Try to touch your toes without bending your knees. If you can't, take 5 sips.",
    "Imitate a famous animal (like a lion or dog) for 1 minute. If not, take 4 sips.",
    "Let someone write a silly word on your forehead. If not, take 5 sips.",
    "Do a dramatic reading of a song lyric. If not, take 5 sips.",
    "Pretend to be a news anchor reporting something ridiculous. If not, take 5 sips.",
    "Chug a drink while standing on one leg. If you spill, take 5 sips.",
    "Pretend you're a cat for the next 3 rounds. If not, take 5 sips.",
    "Do 5 push-ups or sit-ups. If not, take 4 sips.",
    "Post a funny quote from the game on your social media. If not, take 5 sips.",
    "Speak in rhymes for the next 2 rounds. If not, take 5 sips.",
    "Call a random contact and say ‘I love you’ in the most dramatic way. If not, take 5 sips.",
    "Pretend to be a waiter/waitress and take everyone's orders. If not, take 5 sips.",
    "Make a snow angel on the floor. If not, take 4 sips.",
    "Put your socks on your hands and clap. If not, take 4 sips.",
    "Create and perform a 30-second dance routine. If not, take 5 sips.",
    "Take a picture of yourself doing something ridiculous and post it. If not, take 5 sips.",
    "Talk like you’re underwater for the next 2 rounds. If not, take 5 sips.",
    "Pretend you're a robot for the next 3 minutes. If not, take 5 sips.",
    "Send a voice message of you singing your favorite song to the group. If not, take 4 sips.",
    "Let someone else choose an embarrassing nickname for you. If not, take 5 sips.",
    "Post a picture of your breakfast/lunch/dinner on social media, even if it’s weird. If not, take 5 sips.",
    "Act like you're on a game show for 1 minute. If not, take 5 sips.",
    "Do your best impression of a baby crying for 1 minute. If not, take 5 sips.",
    "Try to juggle 3 items. If you fail, take 5 sips.",
    "Take a shot of hot sauce or lemon juice. If not, take 5 sips.",
    "Do a dramatic slow-motion walk around the room. If you stop, take 5 sips.",
    "Make an animal noise every time you speak for the next 3 minutes. If not, take 5 sips.",
    "Let someone else draw a mustache on your face. If not, take 5 sips.",
    "Post an embarrassing throwback picture on your social media. If not, take 5 sips.",
    "Dance like no one is watching for 1 minute. If not, take 4 sips.",
    "Do 10 squats while holding your drink. If you spill, take 5 sips.",
    "Make up a funny song about the group and sing it. If not, take 5 sips.",
    "Act out a scene from your favorite movie. If not, take 4 sips.",
    "Pretend you're a statue for 2 minutes. If you move, take 5 sips.",
    "Pretend to be a superhero for the next 2 minutes. If not, take 5 sips.",
    "Send a message to your crush that says ‘I’m having a great time!’ If not, take 5 sips.",
    "Take a picture of yourself in a silly pose and send it to the group chat. If not, take 4 sips.",
    "Talk in a British accent for the next 3 minutes. If not, take 5 sips.",
    "Do a funny dance for 1 minute without stopping. If you stop, take 5 sips.",
    "Post a random emoji to your social media with no context. If not, take 5 sips.",
    "Let someone else choose a silly song for you to sing. If not, take 4 sips.",
    "Act like you're a waiter/waitress and give everyone an imaginary drink. If not, take 5 sips.",
    "Pretend to be a ballerina for the next 2 minutes. If not, take 5 sips.",
    "Speak like a pirate for the next 5 minutes. If not, take 5 sips.",
    "Do 10 push-ups while holding your drink in one hand. If you spill, take 5 sips.",
    "Pretend you're a famous actor/actress receiving an award. If not, take 5 sips.",
    "Post a weird and silly status update to your social media. If not, take 5 sips.",
    "Do a cartwheel across the room. If you can't, take 5 sips.",
    "Try to touch your nose with your tongue. If you can't, take 4 sips.",
    "Imitate a famous historical figure for 1 minute. If not, take 5 sips.",
    "Act out your favorite animal for the next 2 minutes. If not, take 5 sips.",
    "Make a funny face and hold it for 1 minute. If you break, take 5 sips.",
    "Pretend you're a teacher giving a lesson for 2 minutes. If not, take 5 sips.",
    "Take a funny selfie and send it to the group. If not, take 4 sips.",
    "Pretend to be a waiter/waitress and serve everyone imaginary drinks. If not, take 5 sips.",
    "Do your best impression of a baby for 1 minute. If not, take 4 sips.",
    "Let someone else create a new nickname for you, and you have to use it for the rest of the game. If not, take 5 sips.",
    "Try to stand on one leg for 1 minute. If you fail, take 5 sips.",
    "Make a silly face for 1 minute. If you break the face, take 4 sips.",
    "Pretend to be a famous movie character for 1 minute. If not, take 5 sips.",
    "Do a dramatic reading of a random text message you’ve received. If not, take 4 sips.",
    "Pick someone to impersonate for the next 3 rounds. If you fail, take 5 sips.",
    "Do your best impression of a monkey for 1 minute. If not, take 4 sips.",
    "Sing the chorus of a song as loudly as you can. If not, take 5 sips.",
    "Post a funny photo of yourself to your story. If not, take 5 sips.",
    "Do a cartwheel across the room. If not, take 5 sips.",
    "Wear socks on your hands for the next 5 minutes. If not, take 5 sips.",
    "Do 10 burpees. If you fail, take 5 sips.",
    "Pretend you’re a famous actor accepting an award for 2 minutes. If not, take 5 sips.",
    "Take a funny selfie and send it to the group chat. If not, take 4 sips.",
    "Dance like you're at a wedding reception for 1 minute. If not, take 5 sips.",
    "Call a random person and ask them if they want to join the game. If not, take 5 sips.",
    "Talk in rhymes for the next 2 minutes. If not, take 5 sips.",
    "Send a voice memo to your best friend singing 'Happy Birthday.' If not, take 4 sips.",
    "Make up a song about the group and perform it. If not, take 5 sips.",
    "Act like you're underwater for the next 1 minute. If not, take 4 sips.",
    "Create a funny dance and get everyone to join in. If no one joins, take 5 sips.",
    "Post something completely random on your story. If not, take 5 sips.",
    "Imitate your favorite animal for 1 minute. If not, take 5 sips.",
    "Do a dramatic interpretation of your last text message. If not, take 4 sips.",
    "Act like a famous chef and cook a ridiculous imaginary dish for 2 minutes. If not, take 5 sips.",
    "Start a conversation with someone as if they’re a famous celebrity. If not, take 5 sips.",
    "Make up a joke and tell it to the group. If no one laughs, take 5 sips.",
    "Try to juggle 3 random objects. If you fail, take 5 sips.",
    "Do your best impression of a robot for 1 minute. If not, take 4 sips.",
    "Send an embarrassing video of yourself to the group chat. If not, take 5 sips.",
    "Pretend you’re in a commercial for a silly product. If not, take 5 sips.",
    "Pretend to be a statue for 2 minutes. If you move, take 5 sips.",
    "Walk around the room like a zombie for 1 minute. If not, take 5 sips.",
    "Tell an embarrassing story about yourself. If you refuse, take 5 sips.",
    "Act out a random animal sound and make everyone guess it. If they fail, take 5 sips.",
    "Call your mom and tell her you love her in the most dramatic way possible. If not, take 5 sips.",
    "Pretend you're a news anchor and report something ridiculous. If not, take 5 sips.",
    "Give a compliment to everyone in the room. If you miss one, take 5 sips.",
    "Do 10 jumping jacks while singing the alphabet. If you fail, take 5 sips.",
    "Try to imitate a famous politician for 1 minute. If not, take 5 sips.",
    "Do an impression of a baby trying to speak for 1 minute. If not, take 5 sips.",
    "Imitate the person to your left for 2 minutes. If not, take 4 sips.",
    "Do 10 sit-ups in a row. If you fail, take 5 sips.",
    "Pretend to be a news reporter and interview someone in the group. If not, take 5 sips.",
    "Start a conga line with the group. If no one joins, take 5 sips.",
    "Talk like a pirate for the next 2 minutes. If not, take 5 sips.",
    "Post something weird and funny on your Instagram story. If not, take 5 sips.",
    "Imitate a famous superhero for 1 minute. If not, take 5 sips.",
    "Pretend you're a famous singer and give a concert. If not, take 5 sips.",
    "Act like you're in a horror movie for the next 2 minutes. If not, take 5 sips.",
    "Try to do a handstand. If you fail, take 5 sips.",
    "Let someone else pick an embarrassing item of clothing for you to wear for the next round. If not, take 5 sips.",
    "Walk backwards for 2 minutes. If you stop, take 5 sips.",
    "Do your best impression of a person from another country for 1 minute. If not, take 5 sips.",
    "Pretend you're a professional dancer and perform a routine. If not, take 5 sips.",
    "Try to do a split. If you fail, take 5 sips.",
    "Act out a scene from your favorite movie. If not, take 4 sips.",
    "Take a shot of something spicy. If not, take 5 sips.",
    "Post a ridiculous TikTok dance. If not, take 5 sips.",
    "Talk in a deep voice for the next 3 rounds. If not, take 5 sips.",
    "Do a quick fashion show with the weirdest outfit possible. If not, take 5 sips."
]
