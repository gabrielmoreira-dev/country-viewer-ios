protocol CountryFactoring {
    func getFlag() -> String
    func getName() -> String
    func getDescription() -> String
}

final class USACountryFactory: CountryFactoring {
    func getFlag() -> String {
        "FlagUSA"
    }
    
    func getName() -> String {
        "United States"
    }
    
    func getDescription() -> String {
        "The United States of America (USA) is a country in North America. The national capital is Washington, D.C., and the most populous city and financial center is New York City."
    }
}

final class CanadaCountryFactory: CountryFactoring {
    func getFlag() -> String {
        "FlagCanada"
    }
    
    func getName() -> String {
        "Canada"
    }
    
    func getDescription() -> String {
        "Canada is a country in North America. It's capital is Ottawa, and its three largest metropolitan areas are Toronto, Montreal, and Vancouver."
    }
}

final class MexicoCountryFactory: CountryFactoring {
    func getFlag() -> String {
        "FlagMexico"
    }
    
    func getName() -> String {
        "Mexico"
    }
    
    func getDescription() -> String {
        "Mexico is a country in the southern portion of North America. It is organized as a federal republic comprising 31 states and Mexico City, its capital"
    }
}
