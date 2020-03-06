//
//  TicketView.swift
//  StandByQueue
//
//  Created by Stephen Nary on 3/5/20.
//  Copyright © 2020 Stephen Nary. All rights reserved.
//

import SwiftUI

struct TicketView: View {
    let ticket: Ticket
    var body: some View {
        VStack(alignment: .leading) {
            PropertyView(propertyName: "Requester", propertyValue: ticket.requester)
            PropertyView(propertyName: "Request Date", propertyValue: ticket.requestDateString)
            PropertyView(propertyName: "Description", propertyValue: ticket.description)
            PropertyView(propertyName: "Notes", propertyValue: ticket.notes)
        }
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView(ticket: testTicket)
    }
}
