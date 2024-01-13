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
            Color.purple
                .opacity(0.3)
                .ignoresSafeArea()
            VStack {
                if model.isSecondElapsedShow {
                    Text("Time: \(model.secondElapsed)")
                        .font(.title)
                        .bold()
                }
                HStack {
                    withAnimation {
                        if !model.isTimerOn {
                            Button(action: {
                                model.startTimerButtonTapped()
                            }, label: {
                                ZStack {
                                    Circle()
                                        .frame(height: 100)
                                        .foregroundStyle(.green)

                                    Text("Start")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .bold()
                                }
                            })
                        } else {
                            Button {
                                model.stopTimerButtonTapped()
                            } label: {
                                ZStack {
                                    Circle()
                                        .frame(height: 100)
                                        .foregroundStyle(.red)

                                    Text("Stop")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .bold()
                                }
                            }
                        }
                    }
                    Spacer()
                    Button {
                        model.secondElapsed = 0
                    } label: {
                        ZStack {
                            Circle()
                                .frame(height: 100)
                                .foregroundStyle(.gray)

                            Text("Reset")
                                .foregroundStyle(.white)
                                .font(.title)
                                .bold()
                        }
                    }
                }
                Toggle("Show Seconds", isOn: $model.isSecondElapsedShow)
            }
            .padding()
        }
    }
}

#Preview {
    CounterView(model: CounterModel())
}
