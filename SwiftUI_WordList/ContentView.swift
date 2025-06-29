//
//  ContentView.swift
//  SwiftUI_WordList
//
//  Created by 原田摩利奈 on 2025/06/28.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("My単語帳")
                    .font(.largeTitle)
                
                NavigationLink{
                    QuizView()
                    
                } label: {
                    Text("quiz start")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .clipShape(.capsule)
                }
                
                NavigationLink{
                    WordListView()
                } label: {
                    Text("単語一覧")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .clipShape(.capsule)
                }
            }
            .padding(.horizontal, 60)
        }
    }
}

#Preview {
    ContentView()
}
