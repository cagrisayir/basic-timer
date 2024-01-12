//
//  CounterView.swift
//  basic-timer
//
//  Created by Omer Cagri Sayir on 12.01.2024.
//

import SwiftUI

struct CounterView: View {
    @Bindable var model: CounterModel
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack {
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
            }
        }
    }
}

#Preview {
    CounterView(model: CounterModel())
}
