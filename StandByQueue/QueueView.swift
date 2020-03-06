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
        ScrollView() {
            ForEach(queue) { ticket in
                TicketView(ticket: ticket).padding(5)
            }.frame(minWidth: 200, maxWidth: 300)
        }
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView(queue: testQueue)
    }
}
