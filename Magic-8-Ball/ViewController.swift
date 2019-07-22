//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by lidong on 2019/7/22.
//  Copyright © 2019 lidong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // randomBallNumber = Int.random(in:0...4)
        // imageView.image = UIImage(named: ballArray[randomBallNumber])
         newBallImage()
    }
    
    // 摇一摇
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }

    func newBallImage() -> Void {
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}
