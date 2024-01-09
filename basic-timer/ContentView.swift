//
//  ContentView.swift
//  basic-timer
//
//  Created by Omer Cagri Sayir on 9.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var secondsElapsed = 0

    var body: some View {
        Form {
            Section {
                Button("Start timer") {
                    secondsElapsed = 0
                    Task {
                        while true {
                            try await Task.sleep(for: .seconds(1))
                            secondsElapsed += 1
                        }
                    }
                }
                Text("Time: \(secondsElapsed)")
            } header: {
                Text("Timer")
            }
        }
    }
}

#Preview {
    ContentView()
}
