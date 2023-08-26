//
//  ViewController.swift
//  TimerProject
//
//  Created by Fatih Oğuz on 26.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       counter = 10
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        labelText.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    @objc func timerFunction() {
        labelText.text = "Time: \(counter)"
        counter -= 1
        if counter < 0 {
            timer.invalidate()
            labelText.text = "Download Complete"
        }
    }
}

