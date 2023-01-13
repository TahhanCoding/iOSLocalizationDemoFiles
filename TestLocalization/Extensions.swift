//
//  Extensions.swift
//  TestLocalization
//
//  Created by Ahmed Shaban on 07/01/2023.
//

import Foundation


extension String {
    
    func localized() -> String {
        NSLocalizedString(self, tableName: "Localizable", comment: "")
  }
    
    func localizedWithArguments(_ arguments: CVarArg...) -> String {
        String(format: self.localized(), arguments: arguments)
  }
    
}
