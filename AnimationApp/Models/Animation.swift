//
//  Animation.swift
//  AnimationApp
//
//  Created by Pavlov Artem on 21.09.2021.
//

import Foundation

struct Animation {
    var preset: String
    var curve: String
    var force: Float // 0.1 - 3.0
    var duration: Float // 0.5 - 2.0
    var delay: Float // 0.2 - 1/0
    
    
}
extension Animation {
    static func getAnimation() -> Animation {
        
        var animation: Animation =
            .init(preset: "", curve: "", force: 0, duration: 0, delay: 0)
        
        let animationPresets: [String] = [
            "shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX",
            "flipY", "fall", "squeezeLeft", "squeezeRight", "squeezeDown",
            "squeezeUp", "slideLeft", "slideRight", "slideDown", "slideUp",
            "fadeIn", "fadeOut", "fadeInLeft", "fadeInRight", "fadeInDown",
            "fadeInUp", "zoomIn", "zoomOut", "flash"
        ]
        
        let animationCurves: [String] = [
            "easeIn", "easeOut", "easeInOut", "easeInOut", "linear",
            "spring", "easeInSine", "easeOutSine", "easeInOutSine",
            "easeInQuad", "easeOutQuad", "easeInOutQuad", "easeInCubic",
            "easeOutCubic", "easeInOutCubic", "easeInQuart", "easeOutQuart"
        ]
        
        animation.preset = animationPresets.randomElement() ?? ""
        animation.curve = animationCurves.randomElement() ?? ""
        animation.force = Float.random(in: 0.1...3.0)
        animation.duration = Float.random(in: 0.5...2.0)
        animation.delay = Float.random(in: 0.1...1.0)
        
        return animation
    }
    
}
