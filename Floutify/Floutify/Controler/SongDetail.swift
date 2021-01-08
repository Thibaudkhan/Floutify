//
//  SongDetail.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//

import UIKit

class SongDetail: UIView{


    @IBOutlet weak var titleViewSong: UITextField!
    
    
    func setText(text: TextCell){
        titleViewSong.text = text.title
    }
}
