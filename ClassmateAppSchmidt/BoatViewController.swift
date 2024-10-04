
import UIKit

class BoatViewController: UIViewController {

    var students = [String]()
    var boat = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        students = AppData.namesOfEveryone


    }
        
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
   

}
