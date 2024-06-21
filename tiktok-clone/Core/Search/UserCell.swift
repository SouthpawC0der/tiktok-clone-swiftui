//
//  UserCell.swift
//  tiktok-clone
//
//  Created by Christopher Doyle on 5/15/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray6))
            
            VStack(alignment: .leading) {
                Text("User452983")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Sam Smither")
                    .font(.footnote)
            }

            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
