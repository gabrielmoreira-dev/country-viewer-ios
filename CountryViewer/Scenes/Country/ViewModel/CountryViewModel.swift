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
        registeredFactories.first { $0.canHandle(country) } ?? USACountryFactory.self
    }
    
    private let registeredFactories: [CountryFactoring.Type] = [
        USACountryFactory.self,
        CanadaCountryFactory.self,
        MexicoCountryFactory.self
    ]
    
    init(country: Country) {
        self.country = country
    }
}
