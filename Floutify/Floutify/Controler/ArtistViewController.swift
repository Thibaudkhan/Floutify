//
//  ArtistViewController.swift
//  Floutify
//
//  Created by user185203 on 1/7/21.
//

import UIKit

var album: [String] = ["Cobble","Terre"]
var myIndex = 0


class ArtistViewController: UIViewController {

    var index = 0
    
    
    @IBOutlet weak var tableView: UITableView!
    
        var images: [ImageCell] = []
        var artists: [Artist] = []
        var artistsList: [Artist] {
          get { return artists }
          set(value) { artists = value}
           
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            getJSON()
            tableView.delegate = self
            tableView.dataSource = self
        }
    
        
        func loadArray(artists: [Artist]) {
            images = createArray(artists: artists)
        }
    
    
        func createArray(artists: [Artist]) -> [ImageCell]{
            
            
            print("OSEKUUUUUUUUUUR \(artists)")
            var allImages: [ImageCell] = []
            let txt = "CobblestoneNew.png"
                
            let imageA = ImageCell(image: UIImage(named: txt)! ,title: album[0])
            let imageB = ImageCell(image: UIImage(named: "GrassNew.png")! ,title: album[1])
            
            allImages.append(imageA)
            allImages.append(imageB)
            
            return allImages
        }

        // Integration of the JSON datas //
        func getJSON() {
            
            print("GetJSON !!!!!!!")
            //URL of the JSON
            let urlString = "https://gist.githubusercontent.com/jasonbaldridge/2668632/raw/e56320c485a33c339791a25cc107bf70e7f1d763/music.json"

            // Transform the Url String to an URL Object
            let url = URL(string: urlString)

            guard url != nil else {
                return
            }

            let session = URLSession.shared
            let dataTask = session.dataTask(with: url!) { [self] (data, response, error) in
                
                // Check for errors
                if error == nil && data != nil {
        
                    // Parse JSON
                    let decoder = JSONDecoder()
                    
                    do {
                        
                        let json_decoded = try decoder.decode([Artist].self, from: data!)
                        //artistsList.append(contentsOf: json_decoded)
                        artistsList = json_decoded
                        loadArray(artists: json_decoded)

                        print(artistsList)
                    }
                    catch {
                        print("Error JSON Parsing : \(error)")
                    }
                }
            }
            
            // Make the API Call
            dataTask.resume()
        }
}


    extension ArtistViewController: UITableViewDataSource, UITableViewDelegate{
       
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return images.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let image = images[indexPath.row]
            print(image.title)
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistCell") as! ArtistCell
            cell.setImage(image: image)
            print(image.title)
            return cell
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            index = indexPath.row
            performSegue(withIdentifier: "segue", sender: self)
        }
        
        
    }
