//
//  ViewController.swift
//  tableViewDeveloper
//
//  Created by Grazi Berti on 28/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewDeveloper: UITableView!
    
    var arrayDeveloper = ["Grazielli","Mízia","Gilvã", "Narlei","Jéssica"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDeveloper.delegate = self
        tableViewDeveloper.dataSource = self
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selecionou: \(arrayDeveloper[indexPath.row])")
    }
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        arrayDeveloper.remove(at: indexPath.row)
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDeveloper.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCustom", for: indexPath) as! MyCustomCell
        cell.setup(title: arrayDeveloper[indexPath.row])
        cell.imageView?.image = UIImage(named: "developer.png")
        return cell
    }
    
    
}
