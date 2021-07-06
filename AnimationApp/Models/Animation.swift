//
//  ViewModel.swift
//  HomeWork 2.9
//
//  Created by Alex Tegai on 28.04.2021.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duraction: Float
    let delay: Float
    
    var description: String {
        """
        name: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duraction: \(String(format: "%.02f", duraction))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 1...2),
            duraction: Float.random(in: 1...2),
            delay: 0.3
        )
    }
}


