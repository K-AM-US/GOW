//
//  GamesController.swift
//  GOW
//
//  Created by Mauricio Casillas on 05/08/23.
//

import UIKit

class GamesController: UIViewController {
    @IBOutlet var posterImage: UIImageView!
    @IBOutlet var posterPageControl: UIPageControl!
    
    let gamePoster = Array(0...7)

    override func viewDidLoad() {
        super.viewDidLoad()

        posterPageControl.numberOfPages = gamePoster.count
        posterImage.image = UIImage(named: String(gamePoster.first!))
        // Do any additional setup after loading the view.
    }
    

    @IBAction func rightSwipeDone(_ sender: Any) {
        if posterPageControl.currentPage == 0 {
            posterPageControl.currentPage = 7
            posterImage.image = UIImage(named: String(gamePoster[posterPageControl.currentPage]))
        }
        else{
            posterPageControl.currentPage = posterPageControl.currentPage - 1
            posterImage.image = UIImage(named: String(gamePoster[posterPageControl.currentPage]))
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
