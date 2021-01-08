//
//  SongCell.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//

import UIKit

class SongCell: UITableViewCell {


    
    
    @IBOutlet weak var textViewSong: UITextView!
    
    func setText(text: TextCell){
        textViewSong.text = text.title
    }
}
