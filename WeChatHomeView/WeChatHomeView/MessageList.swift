//
//  MessageList.swift
//  WeChatHomeView
//
//  Created by yuming zheng on 7/13/22.
//

import SwiftUI

struct MessageList: View {
    var messages : [Message] = {//闭包生成需要的属性数组
        var messages : [Message] = []
        for i in 1...20{
            let message = Message(
                  id: i  ,
                  imageName: "JackMa",
                  nickName: "马云第\(i)任儿子",
                  messageText: "\(i)天前借的钱什么时候还",
                  messageDate: "6:00")
            messages.append(message)
        }
        return messages
    }()
    var body: some View {
        NavigationView {
            List(messages){ message in
                ZStack{
                    NavigationLink {
                        MessageDetail(title: message.nickName)
                    } label: {
                        EmptyView()
                    }.opacity(0)//设置透明度
                    MessageRow(message: message)//该操作是为了消除右边的小箭头
                }
                
            }
            .listStyle(.plain)
            .navigationTitle("微信")
            .navigationBarTitleDisplayMode(.inline)//标题的展示
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("lll")
                    } label: {
                        Image(systemName: "plus.circle")//采用系统图片
                            .foregroundColor(.primary)//颜色
                    }.padding(.horizontal)
                    
                }
                
            }
        }
        .navigationViewStyle(.stack)
        .tabItem {
            Image(systemName: "message.fill")
            Text("微信")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MessageList()

    }
}
 
