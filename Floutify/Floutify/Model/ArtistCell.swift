//
//  ArtistCell.swift
//  Floutify
//
//  Created by user185203 on 1/7/21.
//

import UIKit

class ArtistCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var imageViewArtist: UIImageView!
    
    func setImage(image: ImageCell){
        imageViewArtist.image = image.image
        textView.text = image.title
    }
}
