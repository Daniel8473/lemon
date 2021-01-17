//
//  QueueView.swift
//  lemon
//
//  Created by Daniel Silva on 1/17/21.
//

import SwiftUI

struct QueueView: View {
    var body: some View {
        HStack {
            Image("background")
        }
    }
}

struct Business {
    var businessName = ""
    var lineLength = 0
    
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}
