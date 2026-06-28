import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var lblUSD: UILabel!
    @IBOutlet weak var lblEuro: UILabel!
    @IBOutlet weak var lblGBP: UILabel!
    @IBOutlet weak var lblJPY: UILabel!
    @IBOutlet weak var lblCAD: UILabel!

    var amount = 0

    var showEuro = false
    var showGBP = false
    var showJPY = false
    var showCAD = false

    override func viewDidLoad() {
        super.viewDidLoad()

        let converter = CurrencyConverter(usd: amount)

        lblUSD.text = "USD: $\(amount)"

        lblEuro.text = ""
        lblGBP.text = ""
        lblJPY.text = ""
        lblCAD.text = ""

        if showEuro {
            lblEuro.text = String(format: "EUR: %.2f", converter.euro())
        }

        if showGBP {
            lblGBP.text = String(format: "GBP: %.2f", converter.pound())
        }

        if showJPY {
            lblJPY.text = String(format: "JPY: %.2f", converter.yen())
        }

        if showCAD {
            lblCAD.text = String(format: "CAD: %.2f", converter.cad())
        }
    }
}