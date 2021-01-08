//
//  SongViewController.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//

import UIKit

var myIndexSong = 0

class SongViewController: UIViewController {


    var arr = [[["Showbiz","Sunburn"],["Drones"]],[["lal","laal"],["lool","lol"],["lil"]]]
    
    var albums: [TextCell] = []
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        albums = createArray()
        //tableView.delegate = self
        //tableView.dataSource = self
        

        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [TextCell]{
        
        var allAlbums: [TextCell] = []
        var nbIt = 0
        for _ in arr[myIndexArtist][myIndexAlbum]{
            allAlbums.append(TextCell(title:arr[myIndexArtist][myIndexAlbum][nbIt]))
            print(myIndexArtist," : ",myIndexAlbum)
            print("coucou",arr[myIndexArtist][myIndexAlbum][nbIt])
            nbIt+=1
        }
        
        return allAlbums
    }
    
    

}

extension SongViewController: UITableViewDataSource, UITableViewDelegate{

 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return albums.count
 }
 
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let text = albums[indexPath.row]

     
     let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell") as! SongCell
    print(text.title)
     cell.setText(text: text)
     return cell
 }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndexAlbum = indexPath.row
        performSegue(withIdentifier: "segueSong", sender: self)

    }
}
