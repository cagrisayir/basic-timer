//
//  CountdownModel.swift
//  basic-timer
//
//  Created by Omer Cagri Sayir on 11.01.2024.
//

import Foundation

@Observable
class CountdownModel {
    var time: Int = 0

    func setTime(timer: Int) {
        time = timer
    }

    func startTimer() {
        Task { @MainActor in
            while time > 0 {
                try await Task.sleep(for: .seconds(1))
                downTimer()
            }
        }
    }

    func downTimer(second: Int = 1) {
        time = time - second
    }
}
