//
//  VistaUsuariosTableViewController.swift
//  SmartPharma
//
//  Created by David on 14/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

import UIKit

class VistaUsuariosTableViewController: UITableViewController {
    
    var controladorDatosDeUsuario = DatosDeUsuarioController()
    var detailUsuarioTableViewController: DetailUsuarioTableViewController? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    /*
     override func viewWillAppear(animated: Bool) {
     self.clearsSelectionOnViewWillAppear = self.splitViewController!.collapsed
     super.viewWillAppear(animated)
     }
     */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return controladorDatosDeUsuario.numeroDeUsuarios()
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CeldaUsuario", forIndexPath: indexPath)
        
        let etiquetaNombre = cell.textLabel!
        let etiquetaDNI = cell.detailTextLabel!
        
        etiquetaNombre.text = controladorDatosDeUsuario.listaDeUsuarios[indexPath.row].nombre
        
        etiquetaDNI.text = controladorDatosDeUsuario.listaDeUsuarios[indexPath.row].dni
        
        return cell
    }
    
    
    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }
    
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "MuestraDetalleUsuario" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let controladorVistaDetalle = segue.destinationViewController as! DetailUsuarioTableViewController
                
                controladorVistaDetalle.datosDeUsuario = self.controladorDatosDeUsuario.obtenerUsuario(indexPath.row)
            }
        }
        
    }
}
