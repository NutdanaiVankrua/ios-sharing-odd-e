import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private let myTableViewDataSource = MyTableViewDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = 40
        tableView.rowHeight = UITableView.automaticDimension

        tableView.dataSource = myTableViewDataSource
        tableView.delegate = myTableViewDataSource

        let nib = UINib(nibName: "MyCustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "myCell")
    }

}
