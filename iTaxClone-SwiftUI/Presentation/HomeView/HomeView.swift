//
//  HomeView.swift
//  iTaxClone-SwiftUI
//
//  Created by Sorawit Trutsat on 7/8/2565 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("background-primary").ignoresSafeArea()
                ScrollView {
                    VStack {
                        HomeNavBarView()
                            .padding()
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
