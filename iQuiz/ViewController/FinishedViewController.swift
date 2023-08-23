//
//  FinishedViewController.swift
//  iQuiz
//
//  Created by Samantha Nogueira on 22/06/23.
//

import UIKit

class FinishedViewController: UIViewController {
    var isJorge: Int?
    var isThomas: Int?
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var percentLabel: UILabel!
    
    @IBOutlet weak var resumLabel: UILabel!
    
    
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
        configResult()
    }
    
    func configLayout() {
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 12.0
    }
    
    func configResult() {
        guard let isJorge = isJorge else { return }
        guard let isThomas = isThomas else { return }
        
        if isJorge > isThomas {
            resultLabel.text = "Você tirou Jorge Frederico"
            resumLabel.text = "Você ama passear, fazer novos amigos e só come comida selecionada. Além disso, você é uma pessoa que gosta de ter espaço para dormir."
            let percentege = (isJorge * 100) / questions.count
            percentLabel.text = "\(percentege)%"
        } else {
            resultLabel.text = "Você tirou Thomas Frederico"
            resumLabel.text = "Você prefere ficar em casa com os amigos próximos. Não existe hora ruim para comida, como já dizia o ditado: o que não mata, engorda rs"
            let percentege = (isThomas * 100) / questions.count
            percentLabel.text = "\(percentege)%"
        }
    }
}
