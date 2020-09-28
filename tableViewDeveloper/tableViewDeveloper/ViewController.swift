//
//  ViewController.swift
//  tableViewDeveloper
//
//  Created by Grazi Berti on 28/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewDeveloper: UITableView!
    
    var arrayDeveloper = [Developer] ()
        
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDeveloper.delegate = self
        tableViewDeveloper.dataSource = self
        
        
        arrayDeveloper.append(Developer(name: "Grazielli", email: "grazi@gmail.com", image: "developer.jpg") )
        arrayDeveloper.append(Developer(name: "Mizia", email: "mizia@gmail.com", image: "developer.jpg") )
        arrayDeveloper.append(Developer(name: "Gilvã", email: "gilva@gmail.com", image: "developer.jpg") )
        arrayDeveloper.append(Developer(name: "Narlei", email: "narlei@gmail.com", image: "developer.jpg") )
        arrayDeveloper.append(Developer(name: "Jessica", email: "jessica@gmail.com", image: "developer.jpg") )
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
        cell.setup(developer: arrayDeveloper[indexPath.row])
        
        return cell
    }
    
    
}


