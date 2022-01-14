//
//  ViewController.swift
//  HomeWorkSpring
//
//  Created by Дмитрий Бессонов on 14.01.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var viewLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        viewLabel.text = animation.name
    }
    
    
    @IBAction func runAnimationButton(_ sender: SpringButton) {
        viewLabel.text = animation.name
        
        springView.animation = animation.name
        springView.curve = animation.curve
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.force = animation.force
        springView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.animation = "squeeze"
        sender.animate()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

