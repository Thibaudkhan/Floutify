//
//  SongDetail.swift
//  Floutify
//
//  Created by Thibaud roussel on 07/01/2021.
//

import UIKit

class SongDetail: UIView{


    @IBOutlet weak var titleViewSong: UITextField!
    
    
    func setText(text: TextCell){
        titleViewSong.text = text.title
    }
}
