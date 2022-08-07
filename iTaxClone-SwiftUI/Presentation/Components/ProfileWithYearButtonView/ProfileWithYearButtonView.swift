//
//  ProfileWithYearButtonView.swift
//  iTaxClone-SwiftUI
//
//  Created by Sorawit Trutsat on 7/8/2565 BE.
//

import SwiftUI

struct ProfileWithYearButtonView: View {
    var body: some View {
        HStack {
            Text("2565")
                .font(AppFont.apply(weight: .medium, size: .small))
                .foregroundColor(Color.white)
            
            ZStack {
                Circle()
                Image(systemName: "person.fill")
                    .foregroundColor(Color.gray)
            }
            .foregroundColor(Color.white.opacity(0.7))
            .frame(width: 32, height: 32)
        }
        .padding(6)
        .padding(.leading, 6)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.5), lineWidth: 2)
        }
    }
}

struct ProfileWithYearButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileWithYearButtonView()
    }
}
