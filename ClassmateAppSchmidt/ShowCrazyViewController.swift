import UIKit

class ShowCrazyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var addOutlet: UITextField!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var names = [String]()
    
    var rowSelected = -1
    
    var timesClicked = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        names.append("Justin")
        names.append("Evan")
        names.append("Eva")
        names.append("Ava")
        names.append("Brennan")
        names.append("Cam")
        names.append("Jayden")
        names.append("John")
        names.append("Sean")
        names.append("Ryan Spencer")
        names.append("Logan")
        names.append("Michael")
        names.append("Matthew")
        names.append("Daniel")
        names.append("Ryan Stark")
        names.append("Peter")
        AppData.namesOfEveryone = names

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        //cell.textLabel?.text = names[indexPath.row]
        //cell.detailTextLabel?.text = "Student"
        cell.nameLabelOutlet.text = names[indexPath.row]
        
        return cell
    }

    @IBAction func addAction(_ sender: UIButton) {
        if addOutlet.text != nil{
            names.insert(addOutlet.text!, at: 0)
        }
        tableViewOutlet.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        rowSelected = indexPath.row
        timesClicked = timesClicked + 1
        if timesClicked % 2 == 0{
            performSegue(withIdentifier: "doubleClicked", sender: self)
        }
    }
    
    
    @IBAction func deleteAction(_ sender: UIButton) {
        if rowSelected > -1{
            names.remove(at: rowSelected)
        }
        tableViewOutlet.reloadData()
    }
    
}
