import UIKit

class TeleOpViewController: UIViewController {
    
    var totalScore = 0

    @IBOutlet weak var updateScore: UILabel!
    @IBOutlet weak var lowerHubStepper: UIStepper!
    @IBOutlet weak var upperHubStepper: UIStepper!
    @IBOutlet weak var lowerLabel: UILabel!
    @IBOutlet weak var upperLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateScore.text = totalScore.description // 0
    }
    
    @IBAction func clickedLowerHubStepper(_ sender: UIStepper) {
        lowerLabel.text = String(Int(sender.value))
        let lowerhubAdd = Int(lowerLabel.text!)
        let upperhubAdd = Int(upperLabel.text!)!*2
        updateScore.text = String(lowerhubAdd! + upperhubAdd)
    }
    
    @IBAction func clickedUpperHubStepper(_ sender: UIStepper) {
        upperLabel.text = String(Int(sender.value))
        let lowerhubAdd = Int(lowerLabel.text!)
        let upperhubAdd = Int(upperLabel.text!)!*2
        updateScore.text = String(lowerhubAdd! + upperhubAdd)
    }
    
    var teleOpTotal = [""]
    
    @IBAction func teleOpSubmit(_ sender: Any) {
        teleOpTotal.append(String(lowerLabel.text!))
        teleOpTotal.append(String(upperLabel.text!))
        teleOpTotal.append(String(updateScore.text!))
        global.teleOpArray = teleOpTotal
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
