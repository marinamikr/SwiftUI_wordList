//
//  SwiftUI_WordListApp.swift
//  SwiftUI_WordList
//
//  Created by 原田摩利奈 on 2025/06/28.
//

import SwiftUI
import SwiftData


@main
struct WordListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Word.self)
        }
    }
}
