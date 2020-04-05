import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private let myTableViewDataSource = MyTableViewDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        myTableViewDataSource.delegate = self

        tableView.estimatedRowHeight = 40
        tableView.rowHeight = UITableView.automaticDimension

        tableView.dataSource = myTableViewDataSource
        tableView.delegate = myTableViewDataSource

        let nib = UINib(nibName: "MyCustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "myCell")
    }

}

extension ViewController: MyTableViewDelegate {

    func didSelectItem(_ indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewControllerB = storyboard
            .instantiateViewController(identifier: "ViewControllerB") as! ViewControllerB
        viewControllerB.data = "From A"

//        navigationController?.pushViewController(viewControllerB, animated: true)
        present(viewControllerB, animated: true, completion: nil)
    }

    // 1. Segue
    // 2. Code -> present
    // 3. NavigationController -> push

}
