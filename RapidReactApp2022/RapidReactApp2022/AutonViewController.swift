import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var rightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func leftStepper(_ sender: UIStepper) {
        leftLabel.text = String(Int(sender.value))
    }
    
    @IBAction func rightStepper(_ sender: UIStepper) {
        rightLabel.text = String(Int(sender.value))
    }
}
