//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by LionMane Software on 2/13/17.
//  Copyright © 2017 LionMane Software. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blue
    }

    @IBAction func backBtnPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
       
    }
    @IBAction func LoadThrirdPress(_ sender: Any) {
        let songTitle = "Persuit of Happines"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC{
            if let song = sender as? String{
                destination.selectedSong = song
            }
        }
    }
}
