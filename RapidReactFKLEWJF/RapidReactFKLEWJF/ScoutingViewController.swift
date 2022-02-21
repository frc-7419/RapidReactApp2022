import UIKit

class ScoutingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var teamNumberTextField: UITextField!
    
    var scoutingTotal = [""]
    
    @IBAction func scoutingSubmit(_ sender: Any) {
        scoutingTotal.append(String(teamNumberTextField.text!))
        global.scoutingArray = scoutingTotal
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
