import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private var myTableViewDataSource = MyTableViewDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = myTableViewDataSource
        tableView.delegate = myTableViewDataSource
    }

}
