//
//  Team.swift
//  Pool
//
//  Created by mpc on 9/19/21.
//

import Foundation



struct TeamInfo: Codable {
    var dataOpen: [TeamData]
    
    enum CodingKeys: String, CodingKey {
        case dataOpen = "data"
    }

}

struct TeamData: Codable {
    var city: String
    var name: String
    var abr: String
    var conf: String
    var div: String
    
    enum CodingKeys: String, CodingKey {
        case city = "city"
        case name = "name"
        case abr = "abr"
        case conf = "conf"
        case div = "div"
    }

}

func ParseJSON () {
    guard let path = Bundle.main.path(forResource: "teams", ofType: "json") else {
        return
    }
    let url = URL(fileURLWithPath: path)
    var result: TeamInfo?
    do {
        let jsonData = try Data(contentsOf: url)
        result = try JSONDecoder().decode(TeamInfo.self, from: jsonData)
        if let result = result {
            print(result.dataOpen[1].city)
        }
        else {
            print("Failed to parse")
        }
        return
    }
    catch {
        print("Error: \(error)")
    }
}

