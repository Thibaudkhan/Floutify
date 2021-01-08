//
//  AlbumCell.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//

import UIKit

class AlbumCell: UITableViewCell {


   
    @IBOutlet weak var textViewAlbum: UITextView!
    
    func setText(text: TextCell){
        textViewAlbum.text = text.title
    }
}
