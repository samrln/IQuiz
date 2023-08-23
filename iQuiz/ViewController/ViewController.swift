//
//  ViewController.swift
//  iQuiz
//
//  Created by Samantha Nogueira on 21/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func ButtonPressed(_ sender: Any) {
    }
    
    @IBOutlet weak var buttonInitQuiz: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true
        buttonInitQuiz.layer.cornerRadius = 12.0
    }
}

