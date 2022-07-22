//
//  WeChatHomeViewApp.swift
//  WeChatHomeView
//
//  Created by yuming zheng on 7/13/22.
//

import SwiftUI

@main
struct WeChatHomeViewApp: App {
    //属性包装器
    @UIApplicationDelegateAdaptor private var appDelegate: Appdelegate
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            Home()
        }.onChange(of: scenePhase) { newscenePhase in
            switch newscenePhase{
            case .background:
                print("Appj进入后台")
            case .inactive:
                print("APP进入非活跃状态")
            case .active:
                print("APP进入活跃状态")
            @unknown default:
                print("未来需要追加的App生命周期")
            }
        }
    }
}

class Appdelegate: NSObject,UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        config()  
        
        return true
    }
    private func config(){
        //后四行代码可以让头部列表一直保持毛玻璃效果
         let naviBarAppearance = UINavigationBarAppearance()
        naviBarAppearance.configureWithDefaultBackground()
        UINavigationBar.appearance().standardAppearance = naviBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = naviBarAppearance
        //让底部bar一直保持毛玻璃效果
        let tabBarAppearance = UITabBarAppearance()
        naviBarAppearance.configureWithDefaultBackground()
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        
        let tabBarItemAppearance = UITabBarItemAppearance()
        tabBarItemAppearance.selected.iconColor = UIColor(named: "WeChatGreen")
        tabBarItemAppearance.selected.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor(named: "WeChatGreen")!
        ]
        tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
    }
    
}
