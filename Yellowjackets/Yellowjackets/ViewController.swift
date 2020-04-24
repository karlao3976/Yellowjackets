//
//  ViewController.swift
//  Yellowjackets
//
//  Copyright © 2020 Karla Osorno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet var table: UITableView!
    
    var models = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

}

struct Post{
    let numberOfLikes: Int
    let username: String
    let postImageName: String
}
