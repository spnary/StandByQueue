//
//  QueueView.swift
//  StandByQueue
//
//  Created by Stephen Nary on 3/5/20.
//  Copyright © 2020 Stephen Nary. All rights reserved.
//

import SwiftUI

struct QueueView: View {
    let queue: [Ticket]
    var body: some View {
        List(queue) { ticket in
            TicketView(ticket: ticket)
        }
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView(queue: testQueue)
    }
}
