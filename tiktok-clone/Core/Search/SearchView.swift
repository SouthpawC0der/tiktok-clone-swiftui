//
//  SearchView.swift
//  tiktok-clone
//
//  Created by Christopher Doyle on 5/15/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0 ..< 15) {user in
                        UserCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    SearchView()
}
