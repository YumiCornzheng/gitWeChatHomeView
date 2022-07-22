//
//  Home.swift
//  WeChatHomeView
//
//  Created by yuming zheng on 7/21/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView{//底部的tab导航栏界面
            MessageList()
            Text("通讯录页面").tabItem {
                Image(systemName: "person.2.fill")
                Text("发现")
            }
            
            Text("发现页面").tabItem {
                Image(systemName: "location.circle")
                Text("发现")
            }
            Text("我页面").tabItem {
                Image(systemName: "person")
                Text("我")
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
