//
//  ContentView.swift
//  HackerNews
//
//  Created by Ilya Gladyshev on 5/25/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    @State private var selectedPost: Post?
    
    var body: some View {
        NavigationView {
            List(networkManager.posts, id: \.self, selection: $selectedPost) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    NewsItem(mainText: post.title, upScore: post.points)
                }
                .listRowBackground(post == selectedPost ? Color.blue.opacity(0.4) : nil)
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}
