//
//  Model4Views.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/05/12.
//

import Foundation


enum NavigationModel: String {
    case _home
    case _favorite
    case _history
    case _setting
    case _help
    case _login
    case _signup
}

struct MenuItem : Identifiable {
    var id = UUID()
    var text: String
    var menu: NavigationModel
}

var menuItems = [
    MenuItem(text: "ホーム", menu: ._home),
    MenuItem(text: "お気に入り", menu: ._favorite),
    MenuItem(text: "履歴", menu: ._history),
    MenuItem(text: "設定", menu: ._setting),
    MenuItem(text: "ヘルプ", menu: ._help),
    MenuItem(text: "ログイン", menu: ._login),
    MenuItem(text: "サインアップ", menu: ._signup)
]
