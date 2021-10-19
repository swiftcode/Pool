// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let leagues: [League]
    let season: WelcomeSeason
    let week: Week
    let events: [Event]
}

// MARK: - Event
struct Event: Codable {
    let id, uid, date, name: String
    let shortName: String
    let season: EventSeason
    let competitions: [Competition]
    let links: [EventLink]
    let weather: Weather?
    let status: Status
}

// MARK: - Competition
struct Competition: Codable {
    let id, uid, date: String
    let attendance: Int
    let type: CompetitionType
    let timeValid, neutralSite, conferenceCompetition, recent: Bool
    let venue: CompetitionVenue
    let competitors: [Competitor]
    let notes: [JSONAny]
    let situation: Situation?
    let status: Status
    let broadcasts: [Broadcast]
    let leaders: [CompetitionLeader]
    let startDate: String
    let geoBroadcasts: [GeoBroadcast]
    let headlines: [Headline]?
}

// MARK: - Broadcast
struct Broadcast: Codable {
    let market: MarketEnum
    let names: [String]
}

enum MarketEnum: String, Codable {
    case national = "national"
}

// MARK: - Competitor
struct Competitor: Codable {
    let id, uid: String
    let type: TypeElement
    let order: Int
    let homeAway: HomeAway
    let team: Team
    let score: String
    let linescores: [Linescore]
    let statistics: [JSONAny]
    let records: [Record]
    let winner: Bool?
}

enum HomeAway: String, Codable {
    case away = "away"
    case home = "home"
}

// MARK: - Linescore
struct Linescore: Codable {
    let value: Int
}

// MARK: - Record
struct Record: Codable {
    let name: RecordName
    let abbreviation: RecordAbbreviation?
    let type: RecordType
    let summary: String
}

enum RecordAbbreviation: String, Codable {
    case any = "Any"
    case game = "Game"
}

enum RecordName: String, Codable {
    case allSplits = "All Splits"
    case home = "Home"
    case road = "Road"
    case ytd = "YTD"
}

enum RecordType: String, Codable {
    case home = "home"
    case road = "road"
    case total = "total"
}

// MARK: - Team
struct Team: Codable {
    let id, uid, location: String
    let name: String?
    let abbreviation, displayName, shortDisplayName: String
    let color, alternateColor: String?
    let isActive: Bool
    let venue: TeamClass?
    let links: [TeamsOnByeLink]
    let logo: String
}

// MARK: - TeamsOnByeLink
struct TeamsOnByeLink: Codable {
    let rel: [TypeElement]
    let href: String
    let text: Text
    let isExternal, isPremium: Bool
}

enum TypeElement: String, Codable {
    case app = "app"
    case clubhouse = "clubhouse"
    case depthchart = "depthchart"
    case desktop = "desktop"
    case draftpicks = "draftpicks"
    case injuries = "injuries"
    case photos = "photos"
    case roster = "roster"
    case schedule = "schedule"
    case scores = "scores"
    case sportscenter = "sportscenter"
    case stats = "stats"
    case team = "team"
    case transactions = "transactions"
}

enum Text: String, Codable {
    case clubhouse = "Clubhouse"
    case depthChart = "Depth Chart"
    case draftPicks = "Draft Picks"
    case injuries = "Injuries"
    case photos = "photos"
    case roster = "Roster"
    case schedule = "Schedule"
    case scores = "Scores"
    case statistics = "Statistics"
    case transactions = "Transactions"
}

// MARK: - TeamClass
struct TeamClass: Codable {
    let id: String
}

// MARK: - GeoBroadcast
struct GeoBroadcast: Codable {
    let type: GeoBroadcastType
    let market: MarketClass
    let media: Media
    let lang: Lang
    let region: Region
}

enum Lang: String, Codable {
    case en = "en"
}

// MARK: - MarketClass
struct MarketClass: Codable {
    let id: String
    let type: MarketType
}

enum MarketType: String, Codable {
    case national = "National"
}

// MARK: - Media
struct Media: Codable {
    let shortName: String
}

enum Region: String, Codable {
    case us = "us"
}

// MARK: - GeoBroadcastType
struct GeoBroadcastType: Codable {
    let id: String
    let shortName: ShortName
}

enum ShortName: String, Codable {
    case tv = "TV"
}

// MARK: - Headline
struct Headline: Codable {
    let headlineDescription: String
    let type: ShortText
    let shortLinkText: String
    let video: [Video]?

    enum CodingKeys: String, CodingKey {
        case headlineDescription = "description"
        case type, shortLinkText, video
    }
}

enum ShortText: String, Codable {
    case boxScore = "Box Score"
    case gamecast = "Gamecast"
    case highlights = "Highlights"
    case playByPlay = "Play-by-Play"
    case recap = "Recap"
}

// MARK: - Video
struct Video: Codable {
    let id: Int
    let source: SourceEnum
    let headline: String
    let thumbnail: String
    let duration: Int
    let tracking: Tracking
    let deviceRestrictions: DeviceRestrictions
    let geoRestrictions: GeoRestrictions
    let links: Links
}

// MARK: - DeviceRestrictions
struct DeviceRestrictions: Codable {
    let type: DeviceRestrictionsType
    let devices: [Device]
}

enum Device: String, Codable {
    case desktop = "desktop"
    case handset = "handset"
    case settop = "settop"
    case tablet = "tablet"
}

enum DeviceRestrictionsType: String, Codable {
    case whitelist = "whitelist"
}

// MARK: - GeoRestrictions
struct GeoRestrictions: Codable {
    let type: DeviceRestrictionsType
    let countries: [String]
}

// MARK: - Links
struct Links: Codable {
    let api: API
    let web: Web
    let source: SourceClass
    let mobile: Mobile
}

// MARK: - API
struct API: Codable {
    let apiSelf, artwork: Artwork

    enum CodingKeys: String, CodingKey {
        case apiSelf = "self"
        case artwork
    }
}

// MARK: - Artwork
struct Artwork: Codable {
    let href: String
}

// MARK: - Mobile
struct Mobile: Codable {
    let alert, source: Artwork
    let href: String
    let streaming, progressiveDownload: Artwork
}

// MARK: - SourceClass
struct SourceClass: Codable {
    let mezzanine, flash, hds: Artwork
    let hls: HLS
    let hd, full: Artwork
    let href: String

    enum CodingKeys: String, CodingKey {
        case mezzanine, flash, hds
        case hls = "HLS"
        case hd = "HD"
        case full, href
    }
}

// MARK: - HLS
struct HLS: Codable {
    let href: String
    let hd: Artwork

    enum CodingKeys: String, CodingKey {
        case href
        case hd = "HD"
    }
}

// MARK: - Web
struct Web: Codable {
    let href: String
    let short, webSelf: Artwork

    enum CodingKeys: String, CodingKey {
        case href, short
        case webSelf = "self"
    }
}

enum SourceEnum: String, Codable {
    case espn = "espn"
}

// MARK: - Tracking
struct Tracking: Codable {
    let sportName: SportNameEnum
    let leagueName: LeagueName
    let coverageType: CoverageType
    let trackingName, trackingID: String

    enum CodingKeys: String, CodingKey {
        case sportName, leagueName, coverageType, trackingName
        case trackingID = "trackingId"
    }
}

enum CoverageType: String, Codable {
    case finalGameHighlight = "Final Game Highlight"
}

enum LeagueName: String, Codable {
    case noLeague = "No League"
}

enum SportNameEnum: String, Codable {
    case nfl = "nfl"
}

// MARK: - CompetitionLeader
struct CompetitionLeader: Codable {
    let name: LeaderName
    let displayName: DisplayName
    let shortDisplayName: ShortDisplayName
    let abbreviation: LeaderAbbreviation
    let leaders: [LeaderLeader]
}

enum LeaderAbbreviation: String, Codable {
    case pyds = "PYDS"
    case recyds = "RECYDS"
    case ryds = "RYDS"
}

enum DisplayName: String, Codable {
    case passingLeader = "Passing Leader"
    case receivingLeader = "Receiving Leader"
    case rushingLeader = "Rushing Leader"
}

// MARK: - LeaderLeader
struct LeaderLeader: Codable {
    let displayValue: String
    let value: Int
    let athlete: Athlete
    let team: TeamClass
}

// MARK: - Athlete
struct Athlete: Codable {
    let id, fullName, displayName, shortName: String
    let links: [AthleteLink]
    let headshot: String
    let jersey: String
    let position: Position
    let team: TeamClass
    let active: Bool
}

// MARK: - AthleteLink
struct AthleteLink: Codable {
    let rel: [PurpleRel]
    let href: String
}

enum PurpleRel: String, Codable {
    case athlete = "athlete"
    case bio = "bio"
    case desktop = "desktop"
    case gamelog = "gamelog"
    case news = "news"
    case overview = "overview"
    case playercard = "playercard"
    case splits = "splits"
    case stats = "stats"
}

// MARK: - Position
struct Position: Codable {
    let abbreviation: Tion
}

enum Tion: String, Codable {
    case qb = "QB"
    case rb = "RB"
    case te = "TE"
    case wr = "WR"
}

enum LeaderName: String, Codable {
    case passingYards = "passingYards"
    case receivingYards = "receivingYards"
    case rushingYards = "rushingYards"
}

enum ShortDisplayName: String, Codable {
    case pass = "PASS"
    case rec = "REC"
    case rush = "RUSH"
}

// MARK: - Situation
struct Situation: Codable {
    let ref: String
    let lastPlay: LastPlay
    let down, yardLine, distance: Int
    let downDistanceText, shortDownDistanceText, possessionText: String
    let isRedZone: Bool
    let homeTimeouts, awayTimeouts: Int
    let possession: String

    enum CodingKeys: String, CodingKey {
        case ref = "$ref"
        case lastPlay, down, yardLine, distance, downDistanceText, shortDownDistanceText, possessionText, isRedZone, homeTimeouts, awayTimeouts, possession
    }
}

// MARK: - LastPlay
struct LastPlay: Codable {
    let id: String
    let type: LastPlayType
    let text: String
    let scoreValue: Int
    let team: TeamClass
    let probability: Probability
    let drive: Drive
    let start, end: End
    let statYardage: Int
    let athletesInvolved: [AthletesInvolved]
}

// MARK: - AthletesInvolved
struct AthletesInvolved: Codable {
    let id, fullName, displayName, shortName: String
    let links: [AthleteLink]
    let headshot: String
    let jersey: String
    let position: Tion
    let team: TeamClass
}

// MARK: - Drive
struct Drive: Codable {
    let driveDescription: String
    let start: Start
    let timeElapsed: TimeElapsed

    enum CodingKeys: String, CodingKey {
        case driveDescription = "description"
        case start, timeElapsed
    }
}

// MARK: - Start
struct Start: Codable {
    let yardLine: Int
    let text: String
}

// MARK: - TimeElapsed
struct TimeElapsed: Codable {
    let displayValue: Display
}

enum Display: String, Codable {
    case the000 = "0:00"
    case the454 = "4:54"
}

// MARK: - End
struct End: Codable {
    let yardLine: Int
    let team: TeamClass
}

// MARK: - Probability
struct Probability: Codable {
    let tiePercentage: Int
    let homeWinPercentage, awayWinPercentage: Double
    let secondsLeft: Int
}

// MARK: - LastPlayType
struct LastPlayType: Codable {
    let id, text: String
    let abbreviation: ShortDisplayName
}

// MARK: - Status
struct Status: Codable {
    let clock: Int
    let displayClock: Display
    let period: Int
    let type: StatusType
}

// MARK: - StatusType
struct StatusType: Codable {
    let id: String
    let name: TypeName
    let state: State
    let completed: Bool
    let typeDescription: Description
    let detail: Detail
    let shortDetail: ShortDetail
    let altDetail: String?

    enum CodingKeys: String, CodingKey {
        case id, name, state, completed
        case typeDescription = "description"
        case detail, shortDetail, altDetail
    }
}

enum Detail: String, Codable {
    case detailFinal = "Final"
    case finalOT = "Final/OT"
    case the4542NdQuarter = "4:54 - 2nd Quarter"
}

enum TypeName: String, Codable {
    case statusFinal = "STATUS_FINAL"
    case statusInProgress = "STATUS_IN_PROGRESS"
}

enum ShortDetail: String, Codable {
    case finalOT = "Final/OT"
    case shortDetailFinal = "Final"
    case the4542Nd = "4:54 - 2nd"
}

enum State: String, Codable {
    case post = "post"
    case stateIn = "in"
}

enum Description: String, Codable {
    case descriptionFinal = "Final"
    case inProgress = "In Progress"
}

// MARK: - CompetitionType
struct CompetitionType: Codable {
    let id: String
    let abbreviation: TypeAbbreviation
}

enum TypeAbbreviation: String, Codable {
    case std = "STD"
}

// MARK: - CompetitionVenue
struct CompetitionVenue: Codable {
    let id, fullName: String
    let address: Address
    let capacity: Int
    let indoor: Bool
}

// MARK: - Address
struct Address: Codable {
    let city: String
    let state: String?
}

// MARK: - EventLink
struct EventLink: Codable {
    let language: Language
    let rel: [FluffyRel]
    let href: String
    let text, shortText: ShortText
    let isExternal, isPremium: Bool
}

enum Language: String, Codable {
    case enUS = "en-US"
}

enum FluffyRel: String, Codable {
    case boxscore = "boxscore"
    case desktop = "desktop"
    case event = "event"
    case highlights = "highlights"
    case live = "live"
    case pbp = "pbp"
    case recap = "recap"
    case summary = "summary"
}

// MARK: - EventSeason
struct EventSeason: Codable {
    let year, type: Int
    let slug: SeasonSlug
}

enum SeasonSlug: String, Codable {
    case regularSeason = "regular-season"
}

// MARK: - Weather
struct Weather: Codable {
    let displayValue: String
    let temperature: Int
    let conditionID: String

    enum CodingKeys: String, CodingKey {
        case displayValue, temperature
        case conditionID = "conditionId"
    }
}

// MARK: - League
struct League: Codable {
    let id, uid, name, abbreviation: String
    let slug: SportNameEnum
    let season: LeagueSeason
    let calendarType: String
    let calendarIsWhitelist: Bool
    let calendarStartDate, calendarEndDate: String
    let calendar: [Calendar]
}

// MARK: - Calendar
struct Calendar: Codable {
    let label, value, startDate, endDate: String
    let entries: [Entry]
}

// MARK: - Entry
struct Entry: Codable {
    let label, alternateLabel, detail, value: String
    let startDate, endDate: String
}

// MARK: - LeagueSeason
struct LeagueSeason: Codable {
    let year: Int
    let startDate, endDate: String
    let type: SeasonType
}

// MARK: - SeasonType
struct SeasonType: Codable {
    let id: String
    let type: Int
    let name, abbreviation: String
}

// MARK: - WelcomeSeason
struct WelcomeSeason: Codable {
    let type, year: Int
}

// MARK: - Week
struct Week: Codable {
    let number: Int
    let teamsOnBye: [Team]
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
