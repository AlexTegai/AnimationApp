//
//  ViewController.swift
//  HomeWork 2.9
//
//  Created by Alex Tegai on 28.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var animationView: SpringView!
        
    //MARK: - Privat properties
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }

    // MARK: - IBActions
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duraction)
        animationView.delay = CGFloat(animation.delay)
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

