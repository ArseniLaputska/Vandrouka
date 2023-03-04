//
//  TabUIView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 1.02.23.
//

import SwiftUI
import Combine

struct TabUIView: View {
    @State private var selection: TabType = .explore
    
    var body: some View {
        TabView(selection: $selection) {
            ExploreView()
                .tabItem {
                    Image(systemName: selection == .explore ? "airplane.departure" : "airplane.arrival")
                    Text("Explore")
                }.tag(TabType.explore)
            ProfileView()
                .tabItem {
                    Image(systemName: selection == .profile ? "person.fill" : "person")
                    Text("Profile")
                }.tag(TabType.profile)
        }
    }
}

struct TabUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabUIView()
    }
}
