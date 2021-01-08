//
//  SongViewController.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//

import UIKit

var myIndexSong = 0
var mySong = ""

class SongViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    var arr = [[["Showbiz","Sunburn"],["Drones"]],[["lal","laal"],["lool","lol"],["lil"]]]
    
    var songs: [TextCell] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songs = createArray()
        tableView.delegate = self
        tableView.dataSource = self
        

        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [TextCell]{
        
        var allSongs: [TextCell] = []
                
        
        for item in myAlbum {
            print("track", item.title)
            allSongs.append(TextCell(title: item.title))
        }
        
        return allSongs
    }
    
    

}

extension SongViewController: UITableViewDataSource, UITableViewDelegate{

 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return songs.count
 }
 
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let text = songs[indexPath.row]

     
     let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell") as! SongCell
     cell.setText(text: text)
     return cell
 }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndexSong = indexPath.row
        mySong = myAlbum[myIndexSong].title
        performSegue(withIdentifier: "segueSong", sender: self)

    }
}
