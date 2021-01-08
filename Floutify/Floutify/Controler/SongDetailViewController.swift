//
//  SongDetailViewController.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//


import UIKit


class SongDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setText()
        // Do any additional setup after loading the view.
    }
    
        
    @IBOutlet weak var lblTrack: UILabel!
    
    func setText(){
        lblTrack.text = mySong
        
    }
    
}
