//
//  HomeNavBarView.swift
//  iTaxClone-SwiftUI
//
//  Created by Sorawit Trutsat on 7/8/2565 BE.
//

import SwiftUI

struct HomeNavBarView: View {
    private let logo: UIImage = UIImage(named: "itax-logo")!
    var body: some View {
        HStack {
            Image(uiImage: logo)
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(Color("green-primary"))
            Text("iTax")
                .font(.title)
                .bold()
                .foregroundColor(Color.white)
            
            Spacer()
            ProfileWithYearButtonView()
        }
    }
}

struct HomeNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavBarView()
    }
}
