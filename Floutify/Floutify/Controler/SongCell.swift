//
//  SongCell.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//

import UIKit

class SongCell: UITableViewCell {


    
    
   
    
   
    
    @IBOutlet weak var labelTrack: UILabel!
    
    func setText(text: TextCell){
        labelTrack.text = text.title
    }
}
