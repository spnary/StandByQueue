//
//  ContentView.swift
//  StandByQueue
//
//  Created by Stephen Nary on 3/5/20.
//  Copyright © 2020 Stephen Nary. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let queue: [Ticket]
    var body: some View {
        QueueView(queue: queue)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(queue: testQueue)
    }
}
