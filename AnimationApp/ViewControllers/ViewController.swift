//
//  ViewController.swift
//  AnimationApp
//
//  Created by Pavlov Artem on 21.09.2021.
//

import Spring

class ViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet var animationsView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    //MARK: private properties
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }
    
    @IBAction func runAnimationButton(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        animationsView.animation = animation.preset
        animationsView.curve = animation.curve
        animationsView.force = CGFloat(animation.force)
        animationsView.duration = CGFloat(animation.duration)
        animationsView.delay = CGFloat(animation.delay)
        animationsView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

