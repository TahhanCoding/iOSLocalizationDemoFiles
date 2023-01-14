//
//  ContentView.swift
//  TestLocalization
//
//  Created by Ahmed Shaban on 01/01/2023.
//

import SwiftUI

struct ContentView: View {
    
//    MARK: Properties
    let number = 15
    var body: some View {
        let message = "Message".localizedWithArguments(number)
        Text(message)
    }
}


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
