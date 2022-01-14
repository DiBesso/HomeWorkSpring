//
//  Models.swift
//  HomeWorkSpring
//
//  Created by Дмитрий Бессонов on 14.01.2022.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    
    static func getRandomAnimation() -> Animation {
        Animation (
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "fall",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeOut",
            force: 0.7,
            duration: 1.5,
            delay: 0.3
        )
        
    }
}
