//
//  CounterModel.swift
//  basic-timer
//
//  Created by Omer Cagri Sayir on 9.01.2024.
//

import Foundation

class CounterModel: ObservableObject {
    @Published var secondElapsed = 0
    @Published private var timerTask: Task<Void, Error>?
    var isTimerOn: Bool {
        timerTask != nil
    }

    func startTimerButtonTapped() {
        timerTask?.cancel()
        timerTask = Task { @MainActor in
            while true {
                try await Task.sleep(for: .seconds(1))
                self.secondElapsed += 1
                print("SecondElapsed", self.secondElapsed)
            }
        }
    }

    func stopTimerButtonTapped() {
        timerTask?.cancel()
        timerTask = nil
    }
}
