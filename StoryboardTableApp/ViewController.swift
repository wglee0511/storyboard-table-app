//
//  ViewController.swift
//  StoryboardTableApp
//
//  Created by racoon on 5/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    let tableArray = ["배", "사과", "포도", "체리"]
    let language = ["C++", "Swift", "Javascript", "Java", "C#", "Rust"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return tableArray.count
        case 1:
            return language.count
        default:
            return 0
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = tableArray[indexPath.row]
        case 1:
            cell.textLabel?.text = language[indexPath.row]
        default:
            break
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
}
