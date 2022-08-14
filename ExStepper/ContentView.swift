//
//  ContentView.swift
//  ExStepper
//
//  Created by 김종권 on 2022/08/14.
//

import SwiftUI

struct ContentView: View {
  @State private var value = 0
  let colors = [
    Color.orange,
    .red,
    .gray,
    .blue,
    .green,
    .purple,
    .pink
  ]
  
  var body: some View {
//    Stepper {
//      Text("Value: \(value), color: \(colors[value].description)")
//    } onIncrement: {
//      value += 1
//      guard value >= colors.count else { return }
//      value = 0
//    } onDecrement: {
//      value -= 1
//      guard value < 0 else { return }
//      value = colors.count - 1
//    }
    
    Stepper(
      value: $value,
      in: 0...50,
      step: 5
    ) {
      Text("Current: \(value)")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
