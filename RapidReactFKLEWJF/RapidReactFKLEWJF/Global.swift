import Foundation

let global: Global = Global()

class Global {
    var autonArray: [Any] = []
    var teleOpArray: [Any] = []
    var endGameArray: [Any] = []
    var scoutingArray: [Any] = []
    var problemsData: [[String:Any]] = []
    
    func getTotalArray() -> [Any] {
        return autonArray + teleOpArray + endGameArray + scoutingArray + problemsData;
    }
}
