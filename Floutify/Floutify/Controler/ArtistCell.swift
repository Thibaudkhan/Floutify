//
//  ArtistCell.swift
//  Floutify
//
//  Created by user185203 on 1/7/21.
//

import UIKit

class ArtistCell: UITableViewCell {


    
    
    
    @IBOutlet weak var textView: UITextView!
    
    
    func setText(text: TextCell){
        textView.text = text.title
    }
    
}
