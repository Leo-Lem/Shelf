// Created by Leopold Lemmermann on 01.09.2023.

import class ComposableArchitecture.Store
import SwiftData
import SwiftUI

@main
struct App: SwiftUI.App {
  var body: some Scene {
    WindowGroup {
      AppView()
        .environmentObject(store)
    }
    .modelContainer(for: [Book.self, Author.self])
  }

  private let store = Store(initialState: .init(), reducer: AppReducer.init)
}