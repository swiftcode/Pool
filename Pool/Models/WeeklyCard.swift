//
//  WeeklyCard.swift
//  Pool
//
//  Created by mpc on 12/4/21.
//

import Foundation

struct WeeklyCard: Codable {
    let weekNumber: Int?
    let teamName: String?
    let letter: String?

    enum CodingKeys: String, CodingKey {
        case weekNumber = "weekNumber"
        case teamName = "teamName"
        case letter = "letter"
    }

    init() {
        self.weekNumber = 0
        self.teamName = ""
        self.letter = ""
    }

    init(weekNumber: Int?, teamName: String?, letter: String?) {
        self.weekNumber = weekNumber
        self.teamName = teamName
        self.letter = letter
    }
}
