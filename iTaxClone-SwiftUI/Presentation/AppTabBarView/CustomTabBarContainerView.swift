//
//  CustomTabBarContainerView.swift
//  iTaxClone-SwiftUI
//
//  Created by Sorawit Trutsat on 7/8/2565 BE.
//

import SwiftUI

struct CustomTabBarContainerView<Content: View> : View {
    @Binding var selection: TabBarItem
    @State private var tabs: [TabBarItem] = []
    let content: Content
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            content
                .edgesIgnoringSafeArea(.all)
            CustomTabBarView(tabs: tabs, selection: $selection)
        }
        .onPreferenceChange(TabBarItemPreferenceKey.self) { value in
            self.tabs = value
        }
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
    static let tabs: [TabBarItem] = [
        .home, .favorites, .profile
    ]
    static var previews: some View {
        CustomTabBarContainerView(selection: .constant(tabs.first!)) {
            Color.red
        }
    }
}
