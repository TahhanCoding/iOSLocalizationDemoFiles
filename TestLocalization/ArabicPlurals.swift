//
//  ArabicPlurals.swift
//  TestLocalization
//
//  Created by Ahmed Shaban on 07/01/2023.
//

import SwiftUI

struct ArabicPlurals: View {
    
//    //MARK: Properties
//    let SuraName = "Al-Fatiha"
//    let dataToReview = "Today"
//
//
//    var body: some View {
//        let SuraAyahsCount = 2
//        let message = "myMessage".localizedWithArguments(SuraName, SuraAyahsCount, dataToReview )
//        Text(message)
//
//    }
    
    

    //MARK: Properties
    let bookCount = 11
    
//    // get current language key to use if needed
//        let key = Bundle.main.preferredLocalizations.first


    var body: some View {

        let message = "I have %d Books." .localizedWithArguments(bookCount)

        Text(message)
    }
}

struct ArabicPlurals_Previews: PreviewProvider {
    static var previews: some View {
        ArabicPlurals()
    }
}
