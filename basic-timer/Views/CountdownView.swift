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
            Color.purple
                .opacity(0.3)
                .ignoresSafeArea()

            VStack {
                Stepper("Set Timer", value: $userTime)
                Text(userTime == 1 || userTime == 0 ? "Time: \(userTime) second." : "Time: \(userTime) seconds.")

                Button(action: {
                    countdownTime.setTime(timer: userTime)
                    countdownTime.startTimer()
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
                Text("\(countdownTime.time)")
                    .font(.title)
                    .bold()
            }
        }
    }
}

#Preview {
    CountdownView()
}
