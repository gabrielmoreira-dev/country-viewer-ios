protocol CountryFactoring {
    static func getFlag() -> String
    static func getName() -> String
    static func getDescription() -> String
    static func canHandle(_ country: Country) -> Bool
}

final class USACountryFactory: CountryFactoring {
    static func getFlag() -> String {
        "FlagUSA"
    }
    
    static func getName() -> String {
        "United States"
    }
    
    static func getDescription() -> String {
        "The United States of America (USA) is a country in North America. The national capital is Washington, D.C., and the most populous city and financial center is New York City."
    }
    
    static func canHandle(_ country: Country) -> Bool {
        country == .usa
    }
}

final class CanadaCountryFactory: CountryFactoring {
    static func getFlag() -> String {
        "FlagCanada"
    }
    
    static func getName() -> String {
        "Canada"
    }
    
    static func getDescription() -> String {
        "Canada is a country in North America. It's capital is Ottawa, and its three largest metropolitan areas are Toronto, Montreal, and Vancouver."
    }
    
    static func canHandle(_ country: Country) -> Bool {
        country == .canada
    }
}

final class MexicoCountryFactory: CountryFactoring {
    static func getFlag() -> String {
        "FlagMexico"
    }
    
    static func getName() -> String {
        "Mexico"
    }
    
    static func getDescription() -> String {
        "Mexico is a country in the southern portion of North America. It is organized as a federal republic comprising 31 states and Mexico City, its capital"
    }
    
    static func canHandle(_ country: Country) -> Bool {
        country == .mexico
    }
}
