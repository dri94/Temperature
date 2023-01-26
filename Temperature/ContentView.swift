//
//  ContentView.swift
//  Temperature
//
//  Created by Grace Luo on 12/31/21.
//

import SwiftUI

struct ContentView: View {
    // TODO: Create an array of strings named temperatures that holds the following temperature ranged "0-30", "31-50", "51-70", "71-85", "86-100", "1000"
    let temperatures: [String] = ["0-30", "31-50", "51-70", "71-85", "86-100", "1000"]
    
    // TODO: Create an array of strings named temperatureNames that holds the following temperature display names "very cold", "cold", "cool", "warm", "hot", "out of range"
    let temperatureNames: [String] = ["very cold", "cold", "cool", "warm", "hot", "out of range"]
    @State private var selectedTemperature = "71-85"
    
    var body: some View {
        VStack {
            Label("Please select a temperature range", systemImage: "thermometer")
            Picker(selection: $selectedTemperature, label: Text("")) {
                ForEach(temperatures, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(WheelPickerStyle())
            Text("You selected temperature: \(convertTemperature(temperatureRange: selectedTemperature))")
        }
    }
    
    func convertTemperature(temperatureRange: String) -> String {
        // TODO: create a switch over temperatureRange and return the appropriate temperatureName. The temperatureRange variable will be one of the elements from the temperatureRanges variable you created above.
        switch temperatureRange {
        case "0-30":
            return temperatureNames[0]
        case "31-50":
            return temperatureNames[1]
        case "51-70":
            return temperatureNames[2]
        case "71-85":
            return temperatureNames[3]
        case "86-100":
            return temperatureNames[4]
        case "1000":
            return temperatureNames[5]
        default:
            return ""
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
