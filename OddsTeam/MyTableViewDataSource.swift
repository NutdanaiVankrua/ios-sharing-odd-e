import UIKit

class MyTableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {


    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCustomCell

        cell.label.text = "this is a \n very\nvery\nvery\nlong text"


        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tap item: \(indexPath.section), \(indexPath.row)")
    }

}
