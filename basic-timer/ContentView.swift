//
//  ContentView.swift
//  basic-timer
//
//  Created by Omer Cagri Sayir on 9.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var secondsElapsed = 0
    // to stop the timer
    @State private var timerTask: Task<Void, Error>?

    var body: some View {
        Form {
            Section {
                if timerTask == nil {
                    Button("Start timer") {
                        secondsElapsed = 0
                        timerTask?.cancel()
                        timerTask = Task {
                            while true {
                                try await Task.sleep(for: .seconds(1))
                                secondsElapsed += 1
                            }
                        }
                    }
                } else {
                    Button {
                        timerTask?.cancel()
                        timerTask = nil
                    } label: {
                        HStack {
                            Text("Stop timer")
                            Spacer()
                            ProgressView().id(UUID())
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
