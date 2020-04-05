import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var label: UILabel!

    var data: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.purple
        label.text = data
    }

}
