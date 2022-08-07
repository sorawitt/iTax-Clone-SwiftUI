//
//  TabBarItem.swift
//  iTaxClone-SwiftUI
//
//  Created by Sorawit Trutsat on 7/8/2565 BE.
//

import Foundation
import SwiftUI

enum TabBarItem: Hashable {
    case home, favorites, profile
    
    var iconDefaultName: String {
        switch self {
        case .home: return "house"
        case .favorites: return "heart"
        case .profile: return "person"
        }
    }
    
    var iconSelectedName: String {
        switch self {
        case .home: return "house.fill"
        case .favorites: return "heart.fill"
        case .profile: return "person.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .home: return .red
        case .favorites: return .green
        case .profile: return .blue
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .favorites: return "Favorites"
        case .profile: return "Profile"
        }
    }
}
