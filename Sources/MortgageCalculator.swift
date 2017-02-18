import Foundation
// Provides the user with information regarding a mortgage. Will print out the expected monthly payment and return the value.

/* Parameters:
	principal(double) - The balance of the loan, the amount should be passed as a double.

	interest(double) - The interest rate of the loan. Presented as the APR (Annual Percentage Rate) and a whole number (6.0 instead of 0.06). The percentage amount will be converted below.
	
	periods - The amount of years the loan will be. A whole number int should be passed. The years will be converted below.
*/
public func mortgageCalculator(principal: Double, interest: Double, periods: Int) -> Double {
	let p = principal
	let c = (interest/100) / 12
	let n = Double(periods*12)

	let mortgageNumerator: Double = p * (c * pow((1.0 + c), n))
	let mortgageDenominator: Double = pow((1.0 + c), n) - 1.0
	let mortgagePayment: Double = round(100 * (mortgageNumerator/mortgageDenominator)) / 100

	print("The monthly mortgage payment is: \(doubleToCurrency(number: mortgagePayment)).")

	return mortgagePayment
}

// Converts the double amount to currency then returns a string.
private func doubleToCurrency(number: Double) -> String {
    let number = NSDecimalNumber(decimal: Decimal(number))
    
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .currency
    numberFormatter.locale = Locale.current
    
    return numberFormatter.string(from: number)!
}