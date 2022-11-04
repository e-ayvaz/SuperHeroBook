//
//  ViewController.swift
//  SuperHeroBook
//
//  Created by Enes Ayvaz on 4.11.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    @IBOutlet weak var tableView: UITableView!
    var superhero = [String]()
    var heroImagesName = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superhero.append("Batman")
        superhero.append("Spiderman")
        superhero.append("Ironman")
        superhero.append("Hulk")
        superhero.append("Superman")
        
        
        heroImagesName.append("batman")
        heroImagesName.append("superman")
        heroImagesName.append("spiderman")
        heroImagesName.append("hulk")
        heroImagesName.append("ironman")
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superhero.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superhero[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            superhero.remove(at: indexPath.row)
            heroImagesName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
        
    }
    
    
    
    

}

