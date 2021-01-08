//
//  ArtistCell.swift
//  Floutify
//
//  Created by user185203 on 1/7/21.
//

import UIKit

class ArtistCell: UITableViewCell {


    
    
    
   
    
    @IBOutlet weak var labelCell: UILabel!
    
    
    func setText(text: TextCell){
        labelCell.text = text.title
    }
    
}
