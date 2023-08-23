//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Samantha Nogueira on 22/06/23.
//

import UIKit

class QuestionViewController: UIViewController {
    var isThomas = 0
    var isJorge = 0
    var numberQuestion = 0

    @IBOutlet weak var titleQuestionLabel: UILabel!
    
    @IBAction func responseButtonPressed(_ sender: UIButton) {
        let response = questions[numberQuestion].jorge == sender.tag

        if response {
            isJorge += 1
            sender.backgroundColor = UIColor(red: 70/255, green: 53/255, blue: 15/255, alpha: 1.0)
        } else {
            isThomas += 1
            sender.backgroundColor = UIColor(red: 70/255, green: 53/255, blue: 15/255, alpha: 1.0)
        }
        
        if numberQuestion < questions.count - 1 {
            numberQuestion += 1
            Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(configQuestions), userInfo: nil, repeats: false)
        } else {
            toGoFinishedQuiz()
        }
    }
    
    @IBOutlet var buttonQuestions: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controllerLayout()
        configQuestions()
    }
    
    func controllerLayout(){
        navigationItem.hidesBackButton = true
        titleQuestionLabel.numberOfLines = 0
        titleQuestionLabel.textAlignment = .center

        for button in buttonQuestions {
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configQuestions() {
        titleQuestionLabel.text = questions[numberQuestion].title
        for button in buttonQuestions {
            let titlebutton = questions[numberQuestion].responses[button.tag]
            button.setTitle(titlebutton, for: .normal)
            button.backgroundColor = .darkGray
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? FinishedViewController else { return }
        
        resultVC.isJorge = isJorge
        resultVC.isThomas = isThomas
    }
    
    func toGoFinishedQuiz() {
        performSegue(withIdentifier: "toGoFinishedController", sender: nil)
    }
}
