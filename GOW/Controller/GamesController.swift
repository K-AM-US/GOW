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
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        if posterPageControl.currentPage == 7 {
            posterPageControl.currentPage = 0
            posterImage.image = UIImage(named: String(gamePoster[posterPageControl.currentPage]))
        }
        else{
            posterPageControl.currentPage = posterPageControl.currentPage + 1
            posterImage.image = UIImage(named: String(gamePoster[posterPageControl.currentPage]))
        }
    }
    
}
