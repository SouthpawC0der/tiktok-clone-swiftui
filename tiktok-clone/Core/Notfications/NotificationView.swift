//
//  NotificationView.swift
//  tiktok-clone
//
//  Created by Christopher Doyle on 5/15/24.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 23      ) {
                    ForEach(0 ..< 10) {notification in
                       NotificationCell()
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationView()
}
