//
//  AlbumCell.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//

import UIKit

class AlbumCell: UITableViewCell {


   
    
    @IBOutlet weak var albumLabel: UILabel!
    
    func setText(text: TextCell){
        albumLabel.text = text.title
    }
}
