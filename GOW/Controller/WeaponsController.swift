//
//  WeaponsController.swift
//  GOW
//
//  Created by Mauricio Casillas on 05/08/23.
//

import UIKit

class WeaponsController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var gowTableView: UITableView!
    
    var arrayWeapons : [Weapon] = []
    //    CGO Weapons
        let cgoWeapons : [Weapon] = [
            Weapon(
                id: 1, name: "weapon.name.m1lancer",
                description: "weapon.description.m1lancer",
                poster: "Mark1LancerAssaultRifle"
                ),
            Weapon(
                id: 2, name: "weapon.name.m2lancer",
                description: "weapon.description.m2lancer",
                poster: "LancerMk2"
                ),
            Weapon(
                id: 3, name: "weapon.name.longshot",
                description: "weapon.description.longshot",
                poster: "LongshotSniperRifle"
                ),
            Weapon(
                id: 4, name: "weapon.name.hammer",
                description: "weapon.description.hammer",
                poster: "HammerOfDawn"
                ),
            Weapon(
                id: 5, name: "weapon.name.pistol",
                description: "weapon.description.pistol",
                poster: "SnubPistol"
            )
        ]
        
    //    Locus Weapons
        let locustWeapons : [Weapon] = [
            Weapon(
            id: 1, name: "weapon.name.boomshot",
            description: "weapon.description.boomshot",
            poster: "BoomshotGrenadeLauncher"
        ),
            Weapon(
                id: 2, name: "weapon.name.hammerburst",
                description: "weapon.description.hammerburst",
                poster: "HammerburstII"
            ),
        Weapon(
            id: 3, name: "weapon.name.mulcher",
            description: "weapon.description.mulcher",
            poster: "Mulcher"
        ),
        Weapon(
            id: 4, name: "weapon.name.bolo",
            description: "weapon.description.bolo",
            poster: "BoloGrenade"
        ),
        Weapon(
            id: 5, name: "weapon.name.boltok",
            description: "weapon.description.boltok",
            poster: "BoltokPistol"
        )
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.restorationIdentifier == "cogUi"{
            arrayWeapons = cgoWeapons
        }
        else{
            arrayWeapons = locustWeapons
        }
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayWeapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! WeaponCell
        cell.wName.text = NSLocalizedString(arrayWeapons[indexPath.row].name, comment: "")
        cell.wImage.image = UIImage(named: arrayWeapons[indexPath.row].poster)
        cell.wDescription.text = NSLocalizedString(arrayWeapons[indexPath.row].description, comment: "")
                
    return cell
    }
}
