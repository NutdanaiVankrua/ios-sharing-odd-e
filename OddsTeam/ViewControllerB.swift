import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var label: UILabel!

    var data: String = ""

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print("init nibName")
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("init coder")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")

        view.backgroundColor = UIColor.purple
        label.text = data
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }


}
