//
//  Question.swift
//  iQuiz
//
//  Created by Samantha Nogueira on 22/06/23.
//

import Foundation

struct Question {
    var title: String
    var responses: [String]
    var jorge: Int
    var thomas: Int
}

let questions: [Question] = [
    Question(title: "Você prefere passear ou comer ?", responses: ["Comer", "Passear"], jorge: 1, thomas: 0),
    Question(title: "Você prefere dormir na cama ou no sofá ?", responses: ["Cama", "Sofá"], jorge: 0, thomas: 1),
    Question(title: "Você faz xixi por necessidade ou recompensa ?", responses: ["Necessidade", "Recompensa"], jorge: 0, thomas: 1),
]
