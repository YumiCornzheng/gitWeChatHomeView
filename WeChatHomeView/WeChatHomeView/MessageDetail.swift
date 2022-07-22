//
//  MessageDetail.swift
//  WeChatHomeView
//
//  Created by yuming zheng on 7/21/22.
//

import SwiftUI

struct MessageDetail: View {
    let title : String
    
    var body: some View {
        Text("聊天界面").navigationTitle(title)
    }
}


