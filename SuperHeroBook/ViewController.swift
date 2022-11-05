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
    var chosenName = ""
    var chosenImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superhero.append("Batman")
        superhero.append("Spiderman")
        superhero.append("Ironman")
        superhero.append("Superman")
        superhero.append("Hulk")
        heroImagesName.append("batman")
        heroImagesName.append("spiderman")
        heroImagesName.append("ironman")
        heroImagesName.append("superman")
        heroImagesName.append("hulk")
        
        
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenName = superhero[indexPath.row]
        chosenImage = heroImagesName[indexPath.row]
        performSegue(withIdentifier: "toDetailsViewController", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsViewController"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.chosenHeroName = chosenName
            destinationVC.chosenHeroImage = chosenImage
        }
    }
    
    
    
    

}

