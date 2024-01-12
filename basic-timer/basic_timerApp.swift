//
//  basic_timerApp.swift
//  basic-timer
//
//  Created by Omer Cagri Sayir on 9.01.2024.
//

import SwiftUI

@main
struct basic_timerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(model: CounterModel())
//            CountdownView()
        }
    }
}
