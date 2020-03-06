//
//  PropertyView.swift
//  StandByQueue
//
//  Created by Stephen Nary on 3/5/20.
//  Copyright © 2020 Stephen Nary. All rights reserved.
//

import SwiftUI

struct PropertyView: View {
    let propertyName: String
    let propertyValue: String
    var body: some View {
        VStack(alignment:.leading) {
            Text(propertyName).font(.headline)
            Text(propertyValue).lineLimit(nil)
        }.padding(5)
    }
}

struct PropertyView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyView(propertyName: "Requester", propertyValue: "Gritty")
    }
}
