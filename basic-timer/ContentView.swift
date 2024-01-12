//
//  ContentView.swift
//  basic-timer
//
//  Created by Omer Cagri Sayir on 9.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CounterView(model: CounterModel())
                .tabItem {
                    Label("Counter", systemImage: "arrow.counterclockwise.circle.fill")
                }

            CountdownView()
                .tabItem {
                    Label("Countdown", systemImage: "arrow.down.circle.dotted")
                }
        }
    }
}

#Preview {
    ContentView()
}
