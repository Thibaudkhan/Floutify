//
//  AlbumCell.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//

import Foundation
import UIKit

class AlbumCell: UIViewController {

    
    @IBOutlet weak var albumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        albumLabel.text = album[myIndex]
    }
    
}
