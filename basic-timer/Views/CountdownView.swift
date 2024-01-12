//
//  CountdownView.swift
//  basic-timer
//
//  Created by Omer Cagri Sayir on 11.01.2024.
//

import SwiftUI

struct CountdownView: View {
    @State var countdownTime = CountdownModel()

    @State var userTime: Int = 0

    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            VStack {
                Stepper("Set Timer", value: $userTime)
                Text(userTime == 1 || userTime == 0 ? "Time: \(userTime) second." : "Time: \(userTime) seconds.")

                Button("Start Timer") {
                    countdownTime.setTime(timer: userTime)
                    countdownTime.startTimer()
                }

                Text("\(countdownTime.time)")
            }
        }
    }
}

#Preview {
    CountdownView()
}
