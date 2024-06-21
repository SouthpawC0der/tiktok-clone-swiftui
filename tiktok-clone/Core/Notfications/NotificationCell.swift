//
//  NotificationCell.swift
//  tiktok-clone
//
//  Created by Christopher Doyle on 5/15/24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack {
                Text("max.verstappen")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text(" Liked one of your posts. ")
                    .font(.footnote) +
                
                Text("1d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Rectangle()
                .frame(width: 49, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
