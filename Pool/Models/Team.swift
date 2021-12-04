//
//  Team.swift
//  Pool
//
//  Created by mpc on 12/4/21.
//

import Foundation


struct Team: Codable {
    let city, name, abr: String
    let conf: Conf
    let div: Div
}

enum Conf: String, Codable {
    case afc = "AFC"
    case nfc = "NFC"
}

enum Div: String, Codable {
    case divEast = "East"
    case east = "EAST"
    case north = "North"
    case south = "South"
    case west = "West"
}

typealias Teams = [Team]
