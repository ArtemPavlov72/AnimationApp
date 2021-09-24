//
//  Animation.swift
//  AnimationApp
//
//  Created by Pavlov Artem on 21.09.2021.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(force)
        duration: \(duration)
        delay: \(delay)
        """
    }
    
    static func getAnimation() -> Animation {
        
        Animation (
            preset: DataManager.share.animationPresets.randomElement()?.rawValue ?? "preset",
            curve: DataManager.share.curvePresets.randomElement()?.rawValue ?? "curve",
            force: Float.random(in: 0.1...3.0),
            duration: Float.random(in: 0.8...2.0),
            delay: Float.random(in: 0.2...1.0)
        )
    }
}
