//
//  ArabicPlurals.swift
//  TestLocalization
//
//  Created by Ahmed Shaban on 07/01/2023.
//

import SwiftUI

struct ArabicPlurals: View {
    
    //MARK: Properties
    let bookCount = 11
    
    
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
