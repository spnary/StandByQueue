//
//  Ticket.swift
//  StandByQueue
//
//  Created by Stephen Nary on 3/5/20.
//  Copyright © 2020 Stephen Nary. All rights reserved.
//

import Foundation

class Ticket: Identifiable, Codable {
    let id: UUID
    let requester: String
    let requestDate: Date
    let description: String
    let notes: String
    private let dateFormatter = DateFormatter()
    var requestDateString: String {
        get {
            return dateFormatter.string(from: requestDate)
        }
    }
    
    init(requester: String = "", requestDate: Date = Date(), description: String = "", notes: String = "") {
        id = UUID()
        self.requester = requester
        self.requestDate = requestDate
        self.description = description
        self.notes = notes
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .medium
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(UUID.self, forKey: .id)
        requester = try values.decode(String.self, forKey: .requester)
        requestDate = try values.decode(Date.self, forKey: .requestDate)
        description = try values.decode(String.self, forKey: .description)
        notes = try values.decode(String.self, forKey: .notes)
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .medium
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case requester
        case requestDate
        case description
        case notes
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(requester, forKey: .requester)
        try container.encode(requestDate, forKey: .requestDate)
        try container.encode(description, forKey: .description)
        try container.encode(notes, forKey: .notes)
    }
    
}

let testTicket = Ticket(requester: "Liz Lemon", description: "Write a Skit", notes: "Need a new skit for Friday's show")
let testQueue = [testTicket, testTicket, testTicket]
