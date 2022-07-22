//
//  MessageRow.swift
//  WeChatHomeView
//
//  Created by yuming zheng on 7/19/22.
//

import SwiftUI

struct MessageRow: View {
    
    let message : Message
    
    var body: some View {
        HStack(spacing: 10){//横向的StackView
            Image(message.imageName)
                .resizable()
                .scaledToFill()//图片填充方式
                .frame(width: 50, height: 50)//图片的尺寸
                //.clipped()//图片裁剪
                .cornerRadius(3)//设置圆角,有裁剪图片的功能
            HStack(alignment: .top){
                VStack(alignment: .leading, spacing: 6) {
                    Text(message.nickName).font(.system(size: 17))
                    Text(message.messageText)
                        .font( .system(size: 15))
                        .foregroundColor(.secondary)
                }
                Spacer()//控件间的间隔空间
                Text(message.messageDate )
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)//文本颜色
            }
        }.padding([.top, .bottom],8)
    }
}


