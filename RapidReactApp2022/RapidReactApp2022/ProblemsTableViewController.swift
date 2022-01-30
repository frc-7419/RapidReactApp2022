import Foundation
import UIKit

class AddProblemTableViewCell: UITableViewCell {
    @IBOutlet weak var addProblemButton: UIButton!
    
}

class ProblemTableViewCell: UITableViewCell {
    
    var data: [String: Any] = [
        "problem": "",
        "section": "",
        "enabled": false
    ]
    
    @IBOutlet weak var gameSectionButton: UIButton! {
        didSet {
            gameSectionButton.menu = addMenuItems()
            self.data["section"] = gameSectionButton.menu!.children[0].title // set inital section to first element
        }
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        let data = sender.text!
        self.data["problem"] = data
        // if problem empty disable
        if (data == "") {
            problemToggle.setOn(false, animated: true) // off state
            problemToggle.isEnabled = false // disable
        }
        // else enable
        else if (!problemToggle.isOn && !problemToggle.isEnabled) {
            problemToggle.setOn(true, animated: true)
            problemToggle.isEnabled = true
        }
        // call manually because not UIEvent
        switchChanged()
        
        print(self.data)
    }
    
    @IBOutlet weak var problemToggle: UISwitch! {
        // disable initially because problem == ""
        didSet {
            problemToggle.setOn(false, animated: true)
            problemToggle.isEnabled = false
            problemToggle.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        }
    }
    
    @objc func switchChanged() {
        self.data["enabled"] = problemToggle.isOn
    }
    
    func addMenuItems() -> UIMenu {
        let menuItems = UIMenu(title: "", options: .displayInline, children: [
            UIAction(title: "Autonomous", image: UIImage(systemName: "gamecontroller"), handler: { (_) in
                self.data["section"] = "Autonomous"
            }),
            UIAction(title: "Tele-Op", image: UIImage(systemName: "gamecontroller"), handler: { (_) in
                self.data["section"] = "Tele-Op"
            }),
            UIAction(title: "Endgame", image: UIImage(systemName: "gamecontroller"), handler: { (_) in
                self.data["section"] = "Endgame"
            })
        ])
        return menuItems
    }
    

}

class ProblemsTableViewController: UITableViewController {
    
    var rows = 1
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        
        if (indexPath.section == 0) { // problemCell
//            let cell = tableView.dequeueReusableCell(withIdentifier: "problemCell", for: indexPath) as! ProblemTableViewCell
            cell = tableView.dequeueReusableCell(withIdentifier: "problemCell", for: indexPath)
        }
        else if (indexPath.section == 1) { // addProblemCell
            let cell_i = tableView.dequeueReusableCell(withIdentifier: "addProblemCell", for: indexPath) as! AddProblemTableViewCell
            cell_i.addProblemButton.addTarget(self, action: #selector(addRow), for: .touchUpInside)
            cell = cell_i
        }
        return cell
    }
    
    @objc func addRow() {
        rows += 1
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return rows
        }
        return 1
    }

}
