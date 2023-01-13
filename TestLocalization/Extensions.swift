//
//  Extensions.swift
//  TestLocalization
//
//  Created by Ahmed Shaban on 07/01/2023.
//

import Foundation

// To localize strings with/without arguments
extension String {
    
    func localized() -> String {
        NSLocalizedString(self, tableName: "Localizable", comment: "")
  }
    
    func localizedWithArguments(_ arguments: CVarArg...) -> String {
        String(format: self.localized(), arguments: arguments)
  }
    
}


// To get numbers localized, e.g. ENG 9 -> Ar ٩
extension String {
    
    private static let formatter = NumberFormatter()

    func clippingCharacters(in characterSet: CharacterSet) -> String {
        components(separatedBy: characterSet).joined()
    }

    func convertedDigitsToLocale(_ locale: Locale = .current) -> String {
        let digits = Set(clippingCharacters(in: CharacterSet.decimalDigits.inverted))
        guard !digits.isEmpty else { return self }

        Self.formatter.locale = locale

        let maps: [(original: String, converted: String)] = digits.map {
            let original = String($0)
            let digit = Self.formatter.number(from: original)!
            let localized = Self.formatter.string(from: digit)!
            return (original, localized)
        }

        return maps.reduce(self) { converted, map in
            converted.replacingOccurrences(of: map.original, with: map.converted)
        }
    }
}

