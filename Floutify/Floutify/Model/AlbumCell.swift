
import UIKit

class AlbumCell: UITableViewCell {


    @IBOutlet weak var textViewAlbum: UITextView!
    
    func setText(text: TextCell){
        textViewAlbum.text = text.title
    }
}