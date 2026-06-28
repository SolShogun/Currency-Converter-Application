import Foundation

struct CurrencyConverter {

    let usd: Int

    func euro() -> Double {
        return Double(usd) * 0.92
    }

    func pound() -> Double {
        return Double(usd) * 0.78
    }

    func yen() -> Double {
        return Double(usd) * 145.12
    }

    func cad() -> Double {
        return Double(usd) * 1.37
    }

}