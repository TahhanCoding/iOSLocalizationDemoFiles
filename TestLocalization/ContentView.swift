//
//  ContentView.swift
//  TestLocalization
//
//  Created by Ahmed Shaban on 01/01/2023.
//

import SwiftUI





//var result = self.localized(tableName: tableName)
//result = String(format: result, arguments: arguments)
//return result
struct ContentView: View {
    
    //MARK: Properties
    let number = 15
    
    
    var body: some View {

        let message = "Message".localizedWithArguments(number)

        VStack {
            Text(message)
                .padding()
                .foregroundColor(.green)

        }
        .padding()
    }
}

//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
