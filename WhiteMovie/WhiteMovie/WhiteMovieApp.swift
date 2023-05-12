//
//  WhiteMovieApp.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/10.
//

import SwiftUI

@main
struct WhiteMovieApp: App {
    @StateObject private var movies = MovieModel()
    //Viewが起動されたとき専用の処理
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView(selectedTab: ._home)
                .environmentObject(movies)
        }
    }
}
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
}
