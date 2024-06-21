//
//  ProfileHeaderView.swift
//  tiktok-clone
//
//  Created by Christopher Doyle on 5/16/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack (spacing: 8) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray6))
                
                Text("@southpaw.coder")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            HStack {
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 1777, title: "Followers")
                UserStatView(value: 8895, title: "Likes")
                    
            }
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}




