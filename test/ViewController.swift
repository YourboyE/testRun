//
//  ViewController.swift
//  test
//
//  Created by YBE on 11/16/19.
//  Copyright © 2019 DreamDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    
    @IBOutlet weak var textLine: UILabel!
    @IBOutlet weak var countView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countView.text = "\(counter)"
    }

    @IBAction func button(_ sender: Any) {
        
        counter = counter + 1
        countView.text = "\(counter)"
        
        if counter == 10 {
            textLine.text = "You Did It!!"
        } else if counter == 15 {
                textLine.text = "Keep going!"
            view.backgroundColor = UIColor.red
        } else if counter == 20 {
            textLine.text = "One more round"
            view.backgroundColor = UIColor.green
            
        } 
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        
        textLine.text = "Do you want to go again? 🤪"
        view.backgroundColor = UIColor.white
        counter = 0
        countView.text = "\(counter)"
        
    }
    
}

