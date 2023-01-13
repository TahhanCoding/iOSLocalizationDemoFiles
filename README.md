# iOSLocalizationDemoFiles

This projects contains functions and demo experiments for what I did during localization of Quran Circle iOS Application.

The localization is done generally in two files: 
* Localizable.strings for normal strings that doesn't have Plural format.
* Localizable.stringsdict for strings that has a counter variable and needs to be formatted in a convenient way for each plural form in each language. 

* First developed function determines a link between the string to localize and its key in the .strings or .stringsdict file.

* Second function takes the arguments to format string with if any.

In Localizable.strings you might find:
/*"Message" is the key and other side is the value */
"Message" = "Hello %@"; 

let name = "Ahmed"
let message = "Message".localizedWithArguments(name)
print(message) // prints: Hello Ahmed

```

extension String {
    // .localized() 
      func localized() -> String {
        NSLocalizedString(self, tableName: "Localizable", comment: "")
  }
      func localizedWithArguments(_ arguments: CVarArg...) -> String {
        String(format: self.localized(), arguments: arguments)
  }
}

```
This is the core concept. Might explain other parts in comments inside the project in the future.
