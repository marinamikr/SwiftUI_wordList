//
//  WordListView.swift
//  SwiftUI_WordList
//
//  Created by 原田摩利奈 on 2025/06/29.
//

import SwiftUI
import SwiftData


struct WordListView: View {
    @Environment(\.modelContext) var context
    @Query var words: [Word]
    
    var body: some View {
        List {
            if words.isEmpty {
                Text("登録されている単語がありません")
            }
            
            ForEach(words) { word in
                HStack {
                    Text(word.english)
                    Spacer()
                    Text(word.japanese)
                }
            }
        }
        .navigationTitle("単語一覧")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    AddWordView()
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}


#Preview {
    WordListView()
        .modelContainer(wordContainer)
}
