//
//  Ticket.swift
//  StandByQueue
//
//  Created by Stephen Nary on 3/5/20.
//  Copyright © 2020 Stephen Nary. All rights reserved.
//

import Foundation

struct Ticket {
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
        self.requester = requester
        self.requestDate = requestDate
        self.description = description
        self.notes = notes
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .medium
    }
    
    
}

let testTicket = Ticket(requester: "Liz Lemon", description: "Write a Skit", notes: "Need a new skit for Friday's show")
