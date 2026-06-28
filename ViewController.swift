import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtAmount: UITextField!

    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var poundSwitch: UISwitch!
    @IBOutlet weak var yenSwitch: UISwitch!
    @IBOutlet weak var cadSwitch: UISwitch!

    @IBOutlet weak var lblError: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        lblError.text = ""
        txtAmount.keyboardType = .numberPad
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "showResults" {

            guard let amountText = txtAmount.text,
                  let amount = Int(amountText) else {

                lblError.text = "Please enter a valid whole number."

                return
            }

            let destination = segue.destination as! ResultsViewController

            destination.amount = amount

            destination.showEuro = euroSwitch.isOn
            destination.showGBP = poundSwitch.isOn
            destination.showJPY = yenSwitch.isOn
            destination.showCAD = cadSwitch.isOn
        }
    }
}