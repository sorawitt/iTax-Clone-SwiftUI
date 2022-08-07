//
//  RefundTaxMoneyView.swift
//  iTaxClone-SwiftUI
//
//  Created by Sorawit Trutsat on 7/8/2565 BE.
//

import SwiftUI

struct RefundTaxMoneyView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("เงินคืนภาษี")
                .foregroundColor(.white)
            Text("฿88,400")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("green-primary"))
            HStack {
                Text("คุณมีโอกาสได้เงินคืนภาษี")
                    .foregroundColor(.white)
                HStack {
                    Text("฿11,600")
                        .fontWeight(.bold)
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
    }
}
