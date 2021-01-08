//
//  AlbumViewController.swift
//  Floutify
//
//  Created by user185203 on 1/8/21.
//

import UIKit

var myIndexAlbum = 0

class AlbumViewController: UIViewController {

    var arr = [["Showbiz","Drones"],["lal","lol","lil"]]
        
    
    @IBOutlet weak var tableView: UITableView!
    
    var albums: [TextCell] = []
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            albums = createArray()
            tableView.delegate = self
            tableView.dataSource = self
            

            // Do any additional setup after loading the view.
        }
        
        func createArray() -> [TextCell]{
            
            var allAlbums: [TextCell] = []
            var nbIt = 0
            for _ in arr[myIndexArtist]{
                allAlbums.append(TextCell(title:arr[myIndexArtist][nbIt]))
                print(myIndexArtist)
                print("coucou",arr[myIndexArtist][nbIt])
                nbIt+=1
            }
            
            return allAlbums
        }
        
        

    }

    extension AlbumViewController: UITableViewDataSource, UITableViewDelegate{

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return albums.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let text = albums[indexPath.row]

         
         let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumCell") as! AlbumCell
        print(text.title)
         cell.setText(text: text)
         return cell
     }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           myIndexAlbum = indexPath.row
           performSegue(withIdentifier: "segueAlbum", sender: self)

       }
     

    }
