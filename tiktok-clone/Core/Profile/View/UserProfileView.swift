//
//  UserProfileView.swift
//  tiktok-clone
//
//  Created by Christopher Doyle on 5/16/24.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    //header
                    ProfileHeaderView()
                    
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    UserProfileView()
}
