//
//  Team.swift
//  Pool
//
//  Created by mpc on 9/19/21.
//

import Foundation

//struct Team: Codable {
//    let city, name, abr: String
//    let conf: Conf
//    let div: Div
//}
//
//enum Conf: String, Codable {
//    case afc = "AFC"
//    case nfc = "NFC"
//}
//
//enum Div: String, Codable {
//      case divEast = "East"
//    case east = "East"
//    case north = "North"
//    case south = "South"
//    case west = "West"
//}
//
//typealias Teams = [Team]

struct TeamData: Codable {
    let data: [ResultItem]
}

struct ResultItem: Codable {
    let city: String
    let name: String
    let abr: String
    let conf: String
    let div: String
}
