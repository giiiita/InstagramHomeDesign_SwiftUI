//
//  TabBarView.swift
//  InstagramDesign
//
//  Created by giiiita on 2019/09/05.
//  Copyright © 2019 giiiita. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    enum Tab: Int {
        case home, search, post, like, mypage
    }
    @State var selectedTab: Tab = Tab.home
    
    func tabbarItem(imageName: String) -> some View {
        VStack {
            Image(systemName: imageName)
        }
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {

            HomeView().tabItem {
                self.tabbarItem(imageName: "house")
            }.tag(Tab.home)
            HomeView().tabItem {
                self.tabbarItem(imageName: "magnifyingglass")
            }.tag(Tab.search)
            HomeView().tabItem {
                self.tabbarItem(imageName: "plus.square")
            }.tag(Tab.post)
            HomeView().tabItem {
                self.tabbarItem(imageName: "heart")
            }.tag(Tab.post)
            HomeView().tabItem {
                self.tabbarItem(imageName: "person.circle")
            }.tag(Tab.mypage)
        }
            .edgesIgnoringSafeArea(.top)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
