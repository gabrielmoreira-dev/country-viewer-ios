protocol CountryViewModeling {
    var flag: String { get }
    var name: String { get }
    var description: String { get }
}

final class CountryViewModel: CountryViewModeling {
    private let country: Country
    
    var flag: String {
        switch country {
        case .usa:
            return "FlagUSA"
        case .canada:
            return "FlagCanada"
        case .mexico:
            return "FlagMexico"
        }
    }
    
    var name: String {
        switch country {
        case .usa:
            return "United States"
        case .canada:
            return "Canada"
        case .mexico:
            return "Mexico"
        }
    }
    
    var description: String {
        switch country {
        case .usa:
            return "The United States of America (USA) is a country in North America. The national capital is Washington, D.C., and the most populous city and financial center is New York City."
        case .canada:
            return "Canada is a country in North America. It's capital is Ottawa, and its three largest metropolitan areas are Toronto, Montreal, and Vancouver."
        case .mexico:
            return "Mexico is a country in the southern portion of North America. It is organized as a federal republic comprising 31 states and Mexico City, its capital"
        }
    }
    
    init(country: Country) {
        self.country = country
    }
}
