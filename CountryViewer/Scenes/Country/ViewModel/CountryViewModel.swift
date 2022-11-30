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
    
    private lazy var countryFactory: CountryFactoring = {
        switch country {
        case .usa:
            return USACountryFactory()
        case .canada:
            return CanadaCountryFactory()
        case .mexico:
            return MexicoCountryFactory()
        }
    }()
    
    init(country: Country) {
        self.country = country
    }
}
