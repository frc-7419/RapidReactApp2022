//  RapidReact2022 TeleOpViewController

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lowerLabel: UILabel!
    @IBOutlet weak var upperLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func lowerStepper(_ sender: UIStepper) {
        lowerLabel.text = String(Int(sender.value));
    }
    
    @IBAction func upperStepper(_ sender: UIStepper) {
        upperLabel.text = String(Int(sender.value));
    }
    
    
}
