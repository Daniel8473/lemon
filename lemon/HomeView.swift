//
//  ContentView.swift
//  lemon
//
//  Created by Daniel Silva on 1/17/21.
//

import SwiftUI

struct HomeView: View {
    
    // Properties (vars and consts)
    @State var business1:String = "Trader Hoe's"
    @State var business2:String = "Aggie Liquor"
    @State var business3:String = "420 F ST"
    
    @State var b1 = Business()
    @State var b2 = Business()
    @State var b3 = Business()
    
    // ContentView Code
    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                VStack {
                    Spacer()
                    Spacer()
                    Button(action: {
                        b1.businessName = business1
                        b1.lineLength += 1
                        print(b1.businessName + " " + String(b1.lineLength))
                    }, label: {
                        NavigationLink(destination: QueueView()) {
                            Text(business1)
                        }
                    })
                    Spacer()
                    Button(action: {
                        b2.businessName = business2
                        b2.lineLength += 1
                        print(b2.businessName + " " + String(b2.lineLength))
                    }, label: {
                        NavigationLink(destination: QueueView()) {
                            Text(business2)
                        }
                    })
                    Spacer()
                    Button(action: {
                        b3.businessName = business3
                        b3.lineLength += 1
                        print(b3.businessName + " " + String(b3.lineLength))
                    }, label: {
                        NavigationLink(destination: QueueView()) {
                            Text(business3)
                        }
                    })
                    Spacer()
                    Spacer()
        
                }
            }
        }
    }
    
    // Methods (functions)
    func searchForBusinesses() {
        // print("Hello, world!")
    }
}

struct Business {
    var businessName = ""
    var businessID = 0
    var lineLength = Int.random(in: 10...30)
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
