//
//  ContentView.swift
//  basic-timer
//
//  Created by Omer Cagri Sayir on 9.01.2024.
//

import SwiftUI

struct ContentView: View {
    @Bindable var model: CounterModel

    var body: some View {
        Form {
            Section {
                if !model.isTimerOn {
                    Button("Start timer") {
                        model.startTimerButtonTapped()
                    }
                } else {
                    Button {
                        model.stopTimerButtonTapped()
                    } label: {
                        HStack {
                            Text("Stop timer")
                            Spacer()
                            ProgressView().id(UUID())
                        }
                    }
                }
                if model.isSecondElapsedShow {
                    Text("Time: \(model.secondElapsed)")
                }
                Toggle("Show Seconds", isOn: $model.isSecondElapsedShow)
            } header: {
                Text("Timer")
            }
        }
    }
}

#Preview {
    ContentView(model: CounterModel())
}
