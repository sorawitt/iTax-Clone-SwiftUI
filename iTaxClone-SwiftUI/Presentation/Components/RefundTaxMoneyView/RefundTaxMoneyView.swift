//
//  RefundTaxMoneyView.swift
//  iTaxClone-SwiftUI
//
//  Created by Sorawit Trutsat on 7/8/2565 BE.
//

import SwiftUI

struct RefundTaxMoneyView: View {
    var body: some View {
        VStack(spacing: 2) {
            Text("เงินคืนภาษี")
                .font(AppFont.apply(weight: .medium, size: .small))
                .foregroundColor(.white)
            Text("฿88,400")
                .font(AppFont.apply(weight: .semiBold, size: .large))
                .foregroundColor(Color("green-primary"))
            HStack {
                Text("คุณมีโอกาสได้เงินคืนภาษี")
                    .font(AppFont.apply(weight: .regular, size: .small))
                    .foregroundColor(.white)
                HStack {
                    Text("฿11,600")
                        .font(AppFont.apply(weight: .bold, size: .small))
                    Image(systemName: "chevron.right")
                }
                .font(.body)
                .foregroundColor(Color("green-primary"))
            }
        }
    }
}

struct RefundTaxMoneyView_Previews: PreviewProvider {
    static var previews: some View {
        RefundTaxMoneyView()
            .preferredColorScheme(.dark)
    }
}
