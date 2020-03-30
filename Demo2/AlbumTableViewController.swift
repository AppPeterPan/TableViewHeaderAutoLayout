//
//  AlbumTableViewController.swift
//  Demo2
//
//  Created by SHIH-YING PAN on 2020/3/30.
//  Copyright © 2020 SHIH-YING PAN. All rights reserved.
//

import UIKit

class AlbumTableViewController: UITableViewController {
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var albumNameLabel: UILabel!
    @IBOutlet weak var lyricsLabel: UILabel!
    
    override func viewDidLayoutSubviews() {
         super.viewDidLayoutSubviews()
         
        if let headerView = tableView.tableHeaderView {
            let height = headerView.systemLayoutSizeFitting(UIView.layoutFittingExpandedSize).height
            if height != headerView.frame.size.height {
                headerView.frame.size.height = height
                tableView.tableHeaderView = headerView
            }
            
        }
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        lyricsLabel.text = """
再見吧我的王子 守護愛情的樣子
讓回憶紀念最初感動的真實
滿口永遠的孩子 慢慢懂事
用眼淚灌溉會幸福的種子

再見吧我的王子 夢想還沒有消失
我會併著你的勇氣一起堅持
曬著艷陽的奔馳 勾勾手指
你住的城市會有我的 思念因子 喔喔
"""
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
