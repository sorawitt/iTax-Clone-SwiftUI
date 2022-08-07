//
//  CustomTabBarView.swift
//  iTaxClone-SwiftUI
//
//  Created by Sorawit Trutsat on 7/8/2565 BE.
//

import SwiftUI

struct CustomTabBarView: View {
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @Namespace private var namespace
    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab)
                    }
            }
        }
        .padding(6)
        .background(Color.white.ignoresSafeArea(edges: .bottom))
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .home, .favorites, .profile
    ]
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!))
        }
    }
}

extension CustomTabBarView {
    private func tabView(tab: TabBarItem) -> some View {
        let isSelected = selection == tab
        return VStack {
            Image(systemName: isSelected ? tab.iconSelectedName : tab.iconDefaultName)
                .font(.subheadline)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(isSelected ? tab.color : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(content: {
            ZStack {
                if selection == tab {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(tab.color.opacity(0.2))
                        .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                }
            }
        })
        .cornerRadius(10)
    }
    
    private func switchToTab(_ tab: TabBarItem) {
        withAnimation(.easeInOut) {
            selection = tab
        }
    }
}
