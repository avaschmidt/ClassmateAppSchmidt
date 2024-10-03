
import UIKit

class SortedViewController: UIViewController {
    @IBOutlet weak var displayOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        for name in AppData.namesOfEveryone{
            displayOutlet.text += "\n\(name)"
        }
    }
    


}
