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
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(movies)
        }
    }
}
