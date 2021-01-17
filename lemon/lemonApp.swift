//
//  lemonApp.swift
//  lemon
//
//  Created by Daniel Silva on 1/17/21.
//
import CoreData
import SwiftUI

// CORE DATA
class PersistenceManager {
  let persistentContainer: NSPersistentContainer = {
      let container = NSPersistentContainer(name: "Model")
      container.loadPersistentStores(completionHandler: { (storeDescription, error) in
          if let error = error as NSError? {
              fatalError("Unresolved error (error), (error.userInfo)")
          }
      })
      return container
  }()
}

@main
struct lemonApp: App {
    let persistance = PersistenceManager() // CORE DATA
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
