//
//  FeedView.swift
//  tiktok-clone
//
//  Created by Christopher Doyle on 5/13/24.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                  FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear { playInitialVideoIfNecessary() }
                }
            }
            .scrollTargetLayout() //get paging effect
        }
        .onAppear { player.play() }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging) //individual page effect
        .ignoresSafeArea()
        .onChange(of: scrollPosition) {oldValue, newValue in
           playVideoChangeOfScrollPosition(postId: newValue)
        }
    }
    
    func playInitialVideoIfNecessary() {
        guard
            scrollPosition == nil,
            let post = viewModel.posts.first,
            player.currentItem == nil else { return }
        
        let item = AVPlayerItem(url: URL(string: post.videoUrl)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoChangeOfScrollPosition(postId: String?) {
        guard let currentPost = viewModel.posts.first(where: {$0.id == postId}) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL (string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
