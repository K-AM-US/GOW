//
//  HomeViewController.swift
//  GOW
//
//  Created by Mauricio Casillas on 05/08/23.
//

import UIKit

class HomeViewController: UITableViewController {
    
    let menuOptions : [MenuOption] = [
            MenuOption(
                title:"menu.option.videogames",
                image:"gamecontroller.fill",
                segue:"gamesSegue")
            , MenuOption(
                title:"menu.option.weapons",
                image:"shield.fill",
                segue:"weaponsSegue")
            , MenuOption(
                title:"menu.option.characters",
                image:"person.crop.rectangle.stack.fill",
                segue:"charactersSegue")
            ,MenuOption(
                title:"menu.option.merchandise",
                image:"shippingbox.fill",
                segue:"merchandiseSegue")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! MenuOptionCell

        cell.menuOptionLabel.text = menuOptions[indexPath.row].title.localized
        cell.menuImage.image = UIImage(systemName: menuOptions[indexPath.row].image)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self.self)
    }
    
}
