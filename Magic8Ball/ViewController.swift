//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Adegoke Obasa on 15/03/2018.
//  Copyright © 2018 Goke Obasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage() {
        randomBallNumber = Int(arc4random_uniform(5)) + 1
        imageView.image = UIImage(named: "ball\(randomBallNumber)")
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
}

