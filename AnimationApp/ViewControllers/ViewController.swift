//
//  ViewController.swift
//  AnimationApp
//
//  Created by Pavlov Artem on 21.09.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationsView: SpringView!
    @IBOutlet var animationButton: SpringButton!
    
    // не нужно делать отдельные лейблы, достаточно одного
   
    
    private var animationStarted = false
    
    var animationType = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNextAnimationText()
        getButtonText()
    }
    
    private func getNextAnimationText() {
        presetLabel.text = "Preset: \(animationType.preset)"
        curveLabel.text = "Curve: \(animationType.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animationType.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animationType.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", animationType.delay))"
    }
    
    private func getButtonText() {
        if animationStarted {
            animationButton.setTitle("Run \(animationType.preset)", for: .normal)
        } else {
            animationButton.setTitle("Run", for: .normal)
        }
    }
    
    @IBAction func runAnimationButton(_ sender: SpringButton) {
        animationStarted = true
        getNextAnimationText()
        
        animationsView.animation = animationType.preset
        animationsView.curve = animationType.curve
        animationsView.force = CGFloat(animationType.force)
        animationsView.duration = CGFloat(animationType.duration)
        animationsView.delay = CGFloat(animationType.delay)
        animationsView.animate()
        
        animationType = Animation.getAnimation()
        getButtonText()
    }
    
}

