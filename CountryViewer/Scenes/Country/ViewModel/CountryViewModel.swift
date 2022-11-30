protocol CountryViewModeling {
    var flag: String { get }
    var name: String { get }
    var description: String { get }
}

final class CountryViewModel: CountryViewModeling {
    private let country: Country
    
    var flag: String {
        countryFactory.getFlag()
    }
    
    var name: String {
        countryFactory.getName()
    }
    
    var description: String {
        countryFactory.getDescription()
    }
    
    private var countryFactory: CountryFactoring.Type {
        switch country {
        case .usa:
            return USACountryFactory.self
        case .canada:
            return CanadaCountryFactory.self
        case .mexico:
            return MexicoCountryFactory.self
        }
    }
    
    init(country: Country) {
        self.country = country
    }
}
