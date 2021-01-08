//
//  SongCell.swift
//  Floutify
//
//  Created by Thibaud roussel on 07/01/2021.
//

import UIKit

class SongCell: UITableViewCell {


    @IBOutlet weak var textViewSong: UITextView!
    
    func setText(text: TextCell){
        textViewSong.text = text.title
    }
}
