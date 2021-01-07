//
//  ArtistCell.swift
//  Floutify
//
//  Created by Thibaud roussel on 07/01/2021.
//

import UIKit

class ArtistCell: UITableViewCell {


    @IBOutlet weak var imageViewArtist: UIImageView!
    //@IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var textView2: UITextView!
    
    
    func setImage(image: ImageCell){
        imageViewArtist.image = image.image
        textView2.text = image.title
    }
    
}
